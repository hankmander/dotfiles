#!/bin/bash
git ls-files -co --exclude-standard | sed -E '/\.min\.js/d' | tr '\n' '\0'
