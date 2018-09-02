f1score = function(precision, recall){
    2 * precision * recall / (precision + recall)
}

f1_score2 = function(true_pos, false_pos, false_neg){
	precision = true_pos / (true_pos + false_pos)
	recall    = true_pos / (true_pos + false_neg)
	2 * precision * recall / (precision + recall)
}
