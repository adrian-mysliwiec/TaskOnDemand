module.exports = {
  env: {
    es2021: true,
    node: true,
  },
  extends: ['airbnb-base'],
  plugins: ['vitest'],
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  rules: {
    'linebreak-style': 0,
    'no-console': 0,
    'import/extensions': 0,
    'object-curly-newline': 0,
    'no-restricted-syntax': 0,
    'no-plusplus': 0,
    'implicit-arrow-linebreak': 0,
    'function-paren-newline': 0,
    'no-unused-vars': ['error', { argsIgnorePattern: '^_' }],
  },
};
