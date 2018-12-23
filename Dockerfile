FROM haskell
RUN useradd -u 1000 -m jenkins
USER jenkins
RUN stack install hlint && \
  rm -rf /home/jenkins/.stack/*
ENV PATH /home/jenkins/.cabal/bin:/home/jenkins/.local/bin:$PATH
CMD ["/bin/bash"]