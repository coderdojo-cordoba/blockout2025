# GitHub Actions Monitoring

This directory contains scripts for monitoring and managing GitHub Actions workflows.

## check-github-actions.sh

A comprehensive script to monitor GitHub Actions workflow runs via the GitHub API.

### Prerequisites

- `jq` - JSON processor
  ```bash
  sudo apt-get install jq
  ```

- Authentication (one of the following):
  1. **GitHub CLI** (recommended): `gh auth login`
  2. **Environment variable**: `export GITHUB_TOKEN=your_token`
  3. **Token file**: Create `~/.github-token` with your token

### Usage

```bash
# List all workflows
./scripts/check-github-actions.sh list

# List recent workflow runs
./scripts/check-github-actions.sh runs

# List runs for a specific workflow
./scripts/check-github-actions.sh runs "Create Release"

# List runs on a specific branch
./scripts/check-github-actions.sh runs "" main 20

# Show details of a specific run
./scripts/check-github-actions.sh details <run-id>

# Download logs for a run
./scripts/check-github-actions.sh logs <run-id>
./scripts/check-github-actions.sh logs <run-id> output-file.txt

# Wait for a run to complete
./scripts/check-github-actions.sh wait <run-id>
./scripts/check-github-actions.sh wait <run-id> 600  # 10 minute timeout

# Check status of latest runs for all workflows
./scripts/check-github-actions.sh status
```

### Examples

**Monitor a release workflow:**
```bash
# Check status of all workflows
./scripts/check-github-actions.sh status

# List recent release workflow runs
./scripts/check-github-actions.sh runs "Create Release"

# Get details of a specific run
./scripts/check-github-actions.sh details 1234567890

# Wait for it to complete
./scripts/check-github-actions.sh wait 1234567890

# Download logs if it failed
./scripts/check-github-actions.sh logs 1234567890
```

**Check build status after creating a release:**
```bash
# Create a release (triggers build workflows)
# Then monitor the builds:
./scripts/check-github-actions.sh runs "Build Windows" main 5
./scripts/check-github-actions.sh runs "Build macOS (brew)" main 5
./scripts/check-github-actions.sh runs "Build Debian Packages (Ubuntu releases)" main 5
```

### Environment Variables

- `GITHUB_TOKEN` - GitHub personal access token
- `GITHUB_REPOSITORY_OWNER` - Repository owner (default: coderdojo-cordoba)
- `GITHUB_REPOSITORY_NAME` - Repository name (default: blockout2025)

### Output

The script uses color-coded output:
- 🟢 **Green**: Successful workflows
- 🔴 **Red**: Failed workflows
- 🟡 **Yellow**: Running, cancelled, or pending workflows
- 🔵 **Blue**: Headers and informational messages

### Authentication Methods

The script tries authentication methods in this order:

1. **GitHub CLI (`gh`)** - If installed and authenticated
   ```bash
   gh auth login
   ```

2. **GITHUB_TOKEN environment variable**
   ```bash
   export GITHUB_TOKEN=ghp_your_token_here
   ```

3. **~/.github-token file**
   ```bash
   echo "ghp_your_token_here" > ~/.github-token
   chmod 600 ~/.github-token
   ```

### Creating a GitHub Token

If you need to create a personal access token:

1. Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Give it a descriptive name (e.g., "BlockOut Actions Monitor")
4. Select scopes:
   - `repo` (Full control of private repositories)
   - `workflow` (Update GitHub Action workflows)
5. Click "Generate token"
6. Copy the token and save it using one of the authentication methods above

### Troubleshooting

**Error: jq is required**
```bash
sudo apt-get install jq
```

**Error: No GitHub authentication found**
- Make sure you've set up authentication using one of the three methods above
- Test GitHub CLI: `gh auth status`
- Test token: `echo $GITHUB_TOKEN`

**Error: API request failed**
- Check your internet connection
- Verify your token has the correct permissions
- Check if the repository name is correct

### Integration with Release Workflow

The improved `create-release.yml` workflow now uses GitHub CLI to poll workflow status instead of blindly waiting 15 minutes. This ensures all platform builds complete before creating the release.

The workflow:
1. Creates a release tag
2. Tag push triggers all platform build workflows
3. Uses `gh run list` to monitor each workflow
4. Waits up to 30 minutes for all builds to complete
5. Collects all artifacts and creates the GitHub release

You can monitor this process manually using:
```bash
# Watch the release workflow
./scripts/check-github-actions.sh runs "Create Release" main 1

# Check all build workflows
./scripts/check-github-actions.sh status
```
