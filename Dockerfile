FROM haskell:8.4
RUN useradd -u 1000 -m jenkins
USER jenkins
RUN stack config set system-ghc --global true && \
  stack install hlint
ENV PATH /home/jenkins/.cabal/bin:/home/jenkins/.local/bin:$PATH
CMD ["/bin/bash"]