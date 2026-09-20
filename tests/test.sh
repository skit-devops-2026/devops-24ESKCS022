#!/bin/bash

echo "Running Campus Connect tests..."

failed=0

if [ -f "index.html" ]; then
    echo "PASS: index.html exists"
else
    echo "FAIL: index.html is missing"
    failed=1
fi

if [ -f "events.html" ]; then
    echo "PASS: events.html exists"
else
    echo "FAIL: events.html is missing"
    failed=1
fi

if [ -f "css/style.css" ]; then
    echo "PASS: CSS file exists"
else
    echo "FAIL: CSS file is missing"
    failed=1
fi

if [ -f "js/main.js" ]; then
    echo "PASS: JavaScript file exists"
else
    echo "FAIL: JavaScript file is missing"
    failed=1
fi

if grep -q 'href="css/style.css"' index.html; then
    echo "PASS: CSS is connected to index.html"
else
    echo "FAIL: CSS is not connected to index.html"
    failed=1
fi

if grep -q 'src="js/main.js"' index.html; then
    echo "PASS: JavaScript is connected to index.html"
else
    echo "FAIL: JavaScript is not connected to index.html"
    failed=1
fi

if grep -q 'id="menuButton"' index.html && grep -q 'id="mobileMenu"' index.html; then
    echo "PASS: Mobile menu elements exist"
else
    echo "FAIL: Mobile menu elements are missing"
    failed=1
fi

if grep -q "classList.toggle('active')" js/main.js; then
    echo "PASS: Mobile menu JavaScript is present"
else
    echo "FAIL: Mobile menu JavaScript is missing"
    failed=1
fi
if grep -q "Campus Connect" index.html; then
    echo "PASS: Campus Connect title is present"
else
    echo "FAIL: Campus Connect title is missing"
    failed=1
fi

if [ "$failed" -eq 0 ]; then
    echo "All tests passed."
    exit 0
else
    echo "Some tests failed."
    exit 1
fi
