import praw

reddit = praw.Reddit(
  "bsjobs",
  user_agent = "bsjobs v0.1 by /u/maxheld83"
)

# this is from https://stackoverflow.com/questions/36366388/get-all-comments-from-a-specific-reddit-thread-in-python
def getSubComments(comment, allComments, verbose=True):
  allComments.append(comment)
  if not hasattr(comment, "replies"):
    replies = comment.comments()
    if verbose: print("fetching (" + str(len(allComments)) + " comments fetched total)")
  else:
    replies = comment.replies
  for child in replies:
    getSubComments(child, allComments, verbose=verbose)


def getAll(r, submissionId, verbose=True):
  submission = r.submission(submissionId)
  comments = submission.comments
  commentsList = []
  for comment in comments:
    getSubComments(comment, commentsList, verbose=verbose)
  return commentsList

res = getAll(reddit, "8m05sq")
