FROM haskell:8.6.5
RUN stack config set system-ghc --global true && \
  stack --resolver lts-14.27 update && \
  stack --resolver lts-14.27 install hlint hspec QuickCheck
ENV PATH /root/.cabal/bin:/root/.local/bin:$PATH
CMD ["/bin/bash"]