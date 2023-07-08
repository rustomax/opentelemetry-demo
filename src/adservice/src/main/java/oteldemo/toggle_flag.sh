#!/bin/bash

if grep -q true AdService.java; then
  sed -i 's/(true)/(false)/g' AdService.java
  commit_message="Fix adservice resource exhausion"
else
  sed -i 's/(false)/(true)/g' AdService.java
  commit_message="Set adservice resource limits"
fi

git add .
git commit -m "$commit_message"
git push https://rustomax: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@github.com/rustomax/opentelemetry-demo.git
