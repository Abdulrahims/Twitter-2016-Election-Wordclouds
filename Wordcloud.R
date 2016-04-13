library(tm)
library(wordcloud)

# Read in the text files for each candidate

bernie <- read.table("Bernie.txt",header=FALSE, stringsAsFactors=FALSE, fileEncoding="UTF-8")
hilary <- read.table("Hilary.txt",header=FALSE, stringsAsFactors=FALSE, fileEncoding="UTF-8")
cruz <- read.table("Ted.txt",header=FALSE, stringsAsFactors=FALSE, fileEncoding="UTF-8")
rubio <- read.table("Marco.txt",header=FALSE, stringsAsFactors=FALSE, fileEncoding="UTF-8")
trump <- read.table("Donald.txt",header=FALSE, stringsAsFactors=FALSE, fileEncoding="UTF-8")

# Bernie wordcloud   

docs_bernie <- Corpus(VectorSource(bernie))

dtm_bernie <- TermDocumentMatrix(docs_bernie)
m_bernie <- as.matrix(dtm_bernie)
v_bernie <- sort(rowSums(m_bernie),decreasing=TRUE)
d_bernie <- data.frame(word = names(v_bernie),freq=v_bernie)
head(d_bernie, 10)

wordcloud(words = d_bernie$word, freq = d_bernie$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(9, "PuBuGn"))

# Hilary wordcloud  

docs_hilary <- Corpus(VectorSource(hilary))

dtm_hilary <- TermDocumentMatrix(docs_hilary)
m_hilary <- as.matrix(dtm_hilary)
v_hilary <- sort(rowSums(m_hilary),decreasing=TRUE)
d_hilary <- data.frame(word = names(v_hilary),freq=v_hilary)
head(d_hilary, 10)

wordcloud(words = d_hilary$word, freq = d_hilary$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(9, "YlGnBu"))

# Cruz wordcloud   

docs_cruz <- Corpus(VectorSource(cruz))

dtm_cruz <- TermDocumentMatrix(docs_cruz)
m_cruz <- as.matrix(dtm_cruz)
v_cruz <- sort(rowSums(m_cruz),decreasing=TRUE)
d_cruz <- data.frame(word = names(v_cruz),freq=v_cruz)
head(d_cruz, 10)

wordcloud(words = d_cruz$word, freq = d_cruz$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(3, "YlOrRd"))

# Rubio wordcloud   

docs_rubio <- Corpus(VectorSource(rubio))

dtm_rubio <- TermDocumentMatrix(docs_rubio)
m_rubio <- as.matrix(dtm_rubio)
v_rubio <- sort(rowSums(m_rubio),decreasing=TRUE)
d_rubio <- data.frame(word = names(v_rubio),freq=v_rubio)
head(d_rubio, 10)

wordcloud(words = d_rubio$word, freq = d_rubio$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(3, "OrRd"))

# Trump wordcloud  

docs_trump <- Corpus(VectorSource(trump))

dtm_trump <- TermDocumentMatrix(docs_trump)
m_trump <- as.matrix(dtm_trump)
v_trump <- sort(rowSums(m_trump),decreasing=TRUE)
d_trump <- data.frame(word = names(v_trump),freq=v_trump)
head(d_trump, 10)

wordcloud(words = d_trump$word, freq = d_trump$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(3, "Reds"))
