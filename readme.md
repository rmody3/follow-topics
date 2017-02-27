- login
- Create a topic
- find an article
- add an article: url, title, date, summary or whole text
- save an article
- Access all my topics
- See all articles in a topic
- click on an article and take me to the article page
- open up article

- create public and private topics
- add ability to edit vs follow topics
- add commentary to an article
- add op-eds on topics


Lets say I’m really interested in SpaceX.
I first login,
then I create a topic
then I find an article or tweet, or any sort of news
I add the article title, date, url, and summary
I save it
Inside my SpaceX topic I can then see a history of articles in linear fashion
I can scroll through the topic and see all articles
I can click on article and it takes me to the article page with the summary and opens the article

Domain Model

User
id, name, username, password_digest
has many topics
has many articles, through topics


topic
id, name
has many user_topics
has many users, through user_topics 
has many articles

article
id, title, url, date, summary, topic_id
belongs to topic

user_topics
id, user_id, topic_id
