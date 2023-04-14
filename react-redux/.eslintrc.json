{
  "env": {
    "browser": true,
    "es6": true,
    "jest": true
  },
  "parser": "@babel/eslint-parser",
  "parserOptions": {
    "ecmaFeatures": {
      "jsx": true
    },
    "ecmaVersion": 2018,
    "sourceType": "module"
  },
  "extends": ["airbnb", "plugin:react/recommended", "plugin:react-hooks/recommended"],
  "plugins": ["react"],
  "rules": {
    "react/jsx-filename-extension": ["warn", { "extensions": [".js", ".jsx"] }],
    "react/react-in-jsx-scope": "off",
    "import/no-unresolved": "off",
    "no-shadow": "off"
  },
  "overrides": [
    {
       // feel free to replace with your preferred file pattern - eg. 'src/**/*Slice.js' or 'redux/**/*Slice.js'
      "files": ["src/**/*Slice.js"],
      // avoid state param assignment
      "rules": { "no-param-reassign": ["error", { "props": false }] }
    }
  ],
  "ignorePatterns": [
    "dist/",
    "build/"
  ]
}
