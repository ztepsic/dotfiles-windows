# Commands

## Quick save command

> Create a `/quicksave` command to be run just before ending a Claude Code session. The command should do a `git command` and `git tag` on the project, using the current date and time for the tag formatted as `yyyyMMdd_HHmm`, e.g. `20260221_2013`. It should also write a note of what was completed during the session, and a not of what the next task to work on is, to a file called `DEVLOG.md`.
