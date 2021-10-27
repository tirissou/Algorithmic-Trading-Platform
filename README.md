# Algorithmic Trading Platform

## Development

Start the server:

```bash
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Build production server

Currently using a [node.js svelte adapter](https://github.com/sveltejs/kit/tree/master/packages/adapter-node).

```bash
npm run build
```

Preview the built app with `npm run preview`. This should _not_ be used for
serving application in production.

# Action Items

- [X] Design database structure for historical data
    - [X] Historical Data table
    - [X] symbols table
- [X] Setup linting for sql files
- [ ] Data intake from historical data files into PostgreSQL
- [ ] Setup postgraphile


