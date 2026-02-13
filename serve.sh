#!/bin/bash

# Quick start script for Jekyll site

echo "🚀 Starting Jekyll site..."
echo ""

# Check if bundle is installed
if ! command -v bundle &> /dev/null; then
    echo "❌ Bundler not found. Install with: gem install bundler"
    exit 1
fi

# Check if dependencies are installed
if [ ! -d "vendor" ] && [ ! -d ".bundle" ]; then
    echo "📦 Installing dependencies..."
    bundle install
    echo ""
fi

# Start Jekyll server
echo "✅ Starting server at http://localhost:4000"
echo "   Press Ctrl+C to stop"
echo ""

bundle exec jekyll serve --livereload
