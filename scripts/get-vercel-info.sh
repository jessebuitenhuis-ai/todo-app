#!/bin/bash

# Script to help get Vercel project information for GitHub Actions setup
# Run this after linking your project with 'vercel link'

echo "🔍 Getting Vercel project information..."
echo ""

if command -v vercel &> /dev/null; then
    echo "✅ Vercel CLI is installed"
else
    echo "❌ Vercel CLI not found. Please install it first:"
    echo "   npm install -g vercel"
    exit 1
fi

if [ -f .vercel/project.json ]; then
    echo "✅ Project is linked to Vercel"
    echo ""
    echo "📝 Here are your project details:"
    echo ""
    echo "VERCEL_PROJECT_ID:"
    cat .vercel/project.json | grep '"projectId"' | cut -d'"' -f4
    echo ""
    echo "VERCEL_ORG_ID:"
    cat .vercel/project.json | grep '"orgId"' | cut -d'"' -f4
    echo ""
    echo "🔐 Don't forget to create your VERCEL_TOKEN at:"
    echo "   https://vercel.com/account/tokens"
    echo ""
    echo "📋 Add these three values as secrets in your GitHub repository:"
    echo "   Settings > Secrets and variables > Actions"
else
    echo "❌ Project not linked to Vercel"
    echo ""
    echo "Please run 'vercel link' first to connect this project to Vercel"
    echo "Then run this script again to get the required information"
fi