# Todo App - Next.js Application

A simple todo application built with Next.js 15.5.0, React 19.1.0, TypeScript, and Tailwind CSS v4.

**ALWAYS reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.**

## Working Effectively

### Initial Setup
- Install dependencies: `npm install` -- takes about 16 seconds to complete
- The application uses Node.js v20.19.4 and npm v10.8.2 (compatible with higher versions)
- All dependencies are managed via package.json with package-lock.json for version locking

### Build Commands (NEVER CANCEL)
- **Development build**: `npm run dev` -- starts development server with Turbopack in ~1 second. NEVER CANCEL - server runs continuously
- **Production build**: `npm run build` -- takes about 15 seconds to complete. NEVER CANCEL. Set timeout to 60+ seconds minimum
- **Production server**: `npm run start` -- starts production server in ~1 second after build. NEVER CANCEL - server runs continuously
- **Linting**: `npm run lint` -- takes about 2 seconds to complete. Set timeout to 30+ seconds minimum

### Running the Application
- **Development mode**: 
  - `npm run dev`
  - Access at http://localhost:3000
  - Features hot reloading with Turbopack
  - Console may show React DevTools suggestion (normal)
- **Production mode**:
  - `npm run build` (required first)
  - `npm run start`
  - Access at http://localhost:3000

## Validation

### ALWAYS Test Complete User Scenarios
After making ANY changes to the application, **ALWAYS** run through these complete scenarios:
1. **Add Todo**: Type text in input field and click "Add" button or press Enter
2. **Complete Todo**: Click checkbox next to a todo item to mark as completed (should show strikethrough)
3. **Delete Todo**: Click "Delete" button next to any todo item
4. **Task Counter**: Verify the "X of Y tasks remaining" counter updates correctly
5. **Empty State**: Verify "No todos yet. Add one above!" message shows when no todos exist

### ALWAYS Run Validation Commands
Before completing any work:
- `npm run lint` -- ALWAYS run this or CI will fail
- `npm run build` -- ALWAYS verify build succeeds
- Start the application and test the complete user flow described above

### Screenshot Validation
- ALWAYS take a screenshot of the working application after making changes
- The application should show a centered white card with "Todo App" heading
- Input field should be present with "Add a new todo..." placeholder
- Todo items should display with checkboxes, text, and delete buttons

## Common Tasks

### Repository Structure
```
todo-app/
├── .github/                    # GitHub configuration (create copilot-instructions.md here)
├── .gitignore                  # Standard Next.js gitignore
├── README.md                   # Basic project description
├── package.json                # Dependencies and scripts
├── package-lock.json           # Locked dependency versions
├── tsconfig.json               # TypeScript configuration
├── next.config.ts              # Next.js configuration (minimal)
├── eslint.config.mjs           # ESLint configuration with Next.js rules
├── postcss.config.mjs          # PostCSS configuration for Tailwind
├── public/                     # Static assets (SVG icons)
├── src/
│   └── app/
│       ├── globals.css         # Tailwind CSS v4 with inline configuration
│       ├── layout.tsx          # Root layout component
│       └── page.tsx            # Main todo application component
```

### Key Technologies
- **Next.js 15.5.0**: App Router with Turbopack for fast builds
- **React 19.1.0**: Latest React with new features
- **TypeScript**: Strict mode enabled
- **Tailwind CSS v4**: Uses inline configuration in globals.css (no separate config file)
- **ESLint**: Next.js configuration with TypeScript support

### Dependencies Overview
```json
"dependencies": {
  "react": "19.1.0",
  "react-dom": "19.1.0", 
  "next": "15.5.0"
},
"devDependencies": {
  "typescript": "^5",
  "@types/node": "^20",
  "@types/react": "^19", 
  "@types/react-dom": "^19",
  "@tailwindcss/postcss": "^4",
  "tailwindcss": "^4",
  "eslint": "^9",
  "eslint-config-next": "15.5.0",
  "@eslint/eslintrc": "^3"
}
```

### Important Notes
- **No test files exist** - application has no test suite configured
- **No CI/CD configured** - no GitHub Actions workflows exist
- **Tailwind CSS v4** - uses inline configuration in globals.css, not separate config file
- **Turbopack enabled** - both dev and build commands use --turbopack flag for performance
- **Production server may occasionally fail on first start** - rebuild and retry if "routesManifest.dataRoutes is not iterable" error occurs

### Application Features
The todo application includes:
- Add new todos via text input
- Mark todos as complete/incomplete via checkbox
- Delete todos via delete button
- Task counter showing remaining incomplete tasks
- Empty state message when no todos exist
- Responsive design with Tailwind CSS
- Dark/light mode CSS variables (system preference based)

### When Making Changes
1. Make your code changes
2. Run `npm run lint` to check for linting errors
3. Run `npm run build` to verify build succeeds  
4. Run `npm run dev` to test in development mode
5. Test ALL user scenarios listed above
6. Take a screenshot to verify UI is working correctly
7. Optionally test production mode with `npm run build && npm run start`

### Troubleshooting
- **Build fails**: Check TypeScript errors and ESLint issues
- **Dev server won't start**: Ensure port 3000 is available
- **Production server fails**: Run `npm run build` again and retry `npm run start`
- **Styling issues**: Check globals.css for Tailwind import and theme configuration
- **Dependencies issues**: Delete node_modules and run `npm install` again