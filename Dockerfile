FROM haskell:8.4
RUN stack install hlint
CMD ["/bin/bash"]