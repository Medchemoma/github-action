#!/usr/bin/env bash
set -e

node - <<'NODE'
const { add } = require('./src/index.js');

if (add(2, 3) !== 5) {
  console.error('Expected add(2, 3) to equal 5');
  process.exit(1);
}

if (add(-1, 1) !== 0) {
  console.error('Expected add(-1, 1) to equal 0');
  process.exit(1);
}

console.log('All tests passed');
NODE
