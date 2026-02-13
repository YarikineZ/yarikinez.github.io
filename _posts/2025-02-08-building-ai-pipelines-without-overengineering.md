---
layout: post
title: "Building AI Pipelines Without Overengineering"
date: 2025-02-08
reading_time: 6
---

The AI/LLM space is full of overengineered solutions. Every startup wants to build the next comprehensive AI platform. Most should start with a Python script and a prompt.

## The Overengineering Trap

I've watched teams spend months building "AI infrastructure" before shipping a single AI feature. Vector databases, embedding pipelines, fine-tuning frameworks, evaluation harnesses—all before validating that users want what they're building.

This is backwards.

## Start with the Simplest Thing

Here's what a minimal AI pipeline actually needs:

```python
import openai

def process_user_query(query: str) -> str:
    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[{"role": "user", "content": query}]
    )
    return response.choices[0].message.content
```

That's it. Ship that. Learn from it. Then iterate.

## The Three Phases of AI Maturity

### Phase 1: Direct API Calls (Week 1)

- Call OpenAI/Anthropic APIs directly
- Hard-code prompts in your application
- No fancy infrastructure
- **Goal:** Validate the use case

At this stage, your "AI pipeline" is a function. That's fine. Most products should stay here longer than they do.

### Phase 2: Basic Structure (Weeks 2-4)

Once you've proven the concept, add:

- Prompt templates with variable substitution
- Simple prompt versioning (even just comments with dates)
- Basic logging of inputs/outputs
- Cost tracking (API calls aren't free)

```python
class PromptTemplate:
    def __init__(self, template: str, version: str):
        self.template = template
        self.version = version
    
    def render(self, **kwargs) -> str:
        return self.template.format(**kwargs)

# prompts/analyze_code.txt (v1.2)
ANALYZE_CODE = PromptTemplate(
    template="""
    Analyze this code for issues:
    
    {code}
    
    Focus on: {focus_areas}
    """,
    version="1.2"
)
```

### Phase 3: Production Scale (Month 2+)

Only when you have real usage and real problems:

- Implement caching (most queries repeat)
- Add fallback models (for cost/speed tradeoffs)
- Structured logging and monitoring
- Rate limiting and retry logic
- Evaluation framework

Notice what's missing: vector databases, fine-tuning, custom models. You probably don't need them.

## When to Add Complexity

Add infrastructure only when you feel specific pain:

**Vector databases** → When search quality matters and you have >10k documents

**Fine-tuning** → When prompting fails after serious iteration and you have quality training data

**Self-hosting** → When API costs exceed $10k/month or you have strict data requirements

**Custom models** → Probably never for your use case

## The RAG Reality Check

RAG (Retrieval-Augmented Generation) has become the default "solution" for any AI product. Most implementations are overengineered.

Simple RAG that works:

```python
def answer_question(question: str, docs: list[str]) -> str:
    # Find relevant docs (simple embedding similarity)
    relevant = find_top_k_docs(question, docs, k=3)
    
    # Stuff them in the prompt
    context = "\n\n".join(relevant)
    prompt = f"Context:\n{context}\n\nQuestion: {question}\nAnswer:"
    
    return call_llm(prompt)
```

Do you need a vector database? Only if `docs` is so large that in-memory search is slow. For most applications, that's >100k documents.

Do you need sophisticated retrieval? Only if simple similarity search fails. Try it first.

## Measuring What Matters

Skip the MLOps complexity. Track:

1. **Response quality** (thumbs up/down from users)
2. **Latency** (time to first token)
3. **Cost per query**
4. **Cache hit rate**

These four metrics tell you everything. Fancy evaluation frameworks can come later.

## The PoC Mindset

Every AI feature should start as a proof of concept:

- One Python file
- Hard-coded configuration
- Manual testing
- Runs on your laptop

Ship this to 5 users. Get feedback. Only then architect a "real" solution.

We've launched three AI features this way. Two are still running essentially as PoCs (with better error handling). One evolved into a proper service after we saw 10x usage growth. The architecture emerged from need, not anticipation.

## Common Mistakes

**Mistake 1:** Building an "AI platform" before building AI features

**Fix:** Build one feature. Extract common patterns. Then build infrastructure.

**Mistake 2:** Optimizing for problems you don't have yet

**Fix:** Start with the slowest, dumbest solution that works.

**Mistake 3:** Treating LLMs like traditional ML

**Fix:** LLMs are more like databases than models. Query them, don't train them (yet).

## The Right Kind of Engineering

This isn't anti-engineering. It's pro-engineering. Good engineering means:

- Solving actual problems
- Building for current scale
- Iterating based on real feedback
- Avoiding premature abstraction

The best AI pipeline is the one that ships features users love. Start simple. Stay simple as long as you can. Add complexity only when simplicity breaks.

Most teams never reach that point. And that's fine.

---

*Building AI products? I'm interested in your architecture decisions. Reach out: [@{{ site.author.telegram }}](https://t.me/{{ site.author.telegram }})*
