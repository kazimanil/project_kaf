## Created By: Kazım Anıl Eren
## Created On: 2018-09-02
## Edited  On:
## Target    : Calculates F1 Score using Precision and Recall values.
##             Calculates F1 Score using True Positive, False Positive and False Negative values.
## Edits     : None
## Function  :

f1_score = function(precision, recall){
    2 * precision * recall / (precision + recall)
}

f1_score2 = function(true_pos, false_pos, false_neg){
	precision = true_pos / (true_pos + false_pos)
	recall    = true_pos / (true_pos + false_neg)
	2 * precision * recall / (precision + recall)
}
