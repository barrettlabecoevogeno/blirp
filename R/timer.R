# timer

##### 

start.time <- Sys.time()

# Put some code here 

end.time <- Sys.time()
time.taken <- end.time - start.time
print(time.taken)

##### Same command, but less user friendly... 

ptm <- proc.time() # timer for the code
endoftime<-proc.time() - ptm # end of the timer
endoftime #endoftime/60 -> voir elapsed = min