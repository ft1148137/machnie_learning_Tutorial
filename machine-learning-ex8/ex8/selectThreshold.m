s      of 0's and 1's of the outlier predictions
    cvPredictions = (pval < epsilon);
    fp = sum((cvPredictions == 1) & (yval == 0));
    tp = sum((cvPredictions == 1) & (yval == 1));
    fn = sum((cvPredictions == 0) & (yval == 1));

    prec = tp / (tp + fp);
    rec = tp / (tp + fn);

F1 = (2 * prec * rec) / (prec + rec);












    % =============================================================

    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end
