# todo-app
A simple todo application using Next.js

## Deployment

This project is automatically deployed to Vercel using GitHub Actions. The deployment workflow triggers on:
- Push to `main` or `master` branch (production deployment)
- Pull requests to `main` or `master` branch (preview deployment)

### Required Environment Variables/Secrets

To enable automatic deployment, configure the following secrets in your GitHub repository settings (`Settings > Secrets and variables > Actions`):

#### Required Secrets:
- **`VERCEL_TOKEN`**: Your Vercel API token
  - Get this from [Vercel Dashboard > Settings > Tokens](https://vercel.com/account/tokens)
  - Create a new token with appropriate permissions

- **`VERCEL_ORG_ID`**: Your Vercel organization/team ID
  - Found in your Vercel project settings or team settings
  - For personal accounts, this is your user ID

- **`VERCEL_PROJECT_ID`**: Your Vercel project ID
  - Found in your Vercel project settings
  - You can also get this by running `vercel link` in your project directory

### Setup Instructions:

1. **Create a Vercel project:**
   - Go to [Vercel Dashboard](https://vercel.com/dashboard)
   - Import your GitHub repository
   - Note down the Project ID and Org ID from project settings

2. **Generate Vercel API Token:**
   - Visit [Vercel Tokens](https://vercel.com/account/tokens)
   - Create a new token with appropriate scope

3. **Get project information (optional helper):**
   - Install Vercel CLI: `npm install -g vercel`
   - Link your project: `vercel link`
   - Run the helper script: `./scripts/get-vercel-info.sh`
   - This will display your `VERCEL_PROJECT_ID` and `VERCEL_ORG_ID`

4. **Configure GitHub Secrets:**
   - Go to your GitHub repository
   - Navigate to `Settings > Secrets and variables > Actions`
   - Add the three required secrets listed above

5. **Trigger deployment:**
   - Push to `main` or `master` branch for production deployment
   - Create a pull request for preview deployment

The workflow will automatically build and deploy your application to Vercel with each push!
