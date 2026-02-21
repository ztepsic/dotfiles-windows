# AI personalities

- **Analyst** - Gather and clarify requirements
- **Architect** - Specification and implementation plan
- **Developer** - Execute the plan
- **Reviewer** - Check generated code

## Requirement analyst

- No assumptions about:
  - Platforms, languages, frameworks, models ...
- Starting vague can yield surprising results
- Output: REQUIREMENTS.md

Prompt:

```
Create a system prompt document for a Requirements Analyst that gathers information and asks question to produce a REQUIREMENTS.md document that a Solution Architect can use to design the solution and plant the implementation.
```

## Solution Architect

Prompt:

```
Create a system prompt document for a Solution Architect and giving it instructions to read REQUIREMENTS.md document, then engage with the user to design a solution and plan the implementation, producing a SPEC.md document to be used along with the OpenSpec tool to implement the solution by a Software Developer.
```

## Developer

- Use SPEC.md to create DEVELOPER.md system prompt:
  - You are a {LANGUAGE} developer
  - Use test-driven development
  - Comment your code
  - Every time you start a new task or build new component create a git branch
  - Work in smallest increments possible

```bash
npm install -g @fission-ai/openspec@latest
openspec init
```

Prompt:

```
Use SPEC.md to create DEVELOPER.md system prompt document:
    - You are a C# (.net) developer
    - Use test-driven development
    - Comment your code
    - Every time you start a new task create a git branch
```

## Reviewer

- System prompt based on SPEC.md
- Review changes on branch before merging to main
- Produce COMMENTS.md
- Loop back to Developer

Prompt:

```
Use SPEC.md to create REVIEWER.md system prompt document:
    - Review changes on branch before merging to main
    - Produce COMMENTS.md
    - Loop back to Developer
```
