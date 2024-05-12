//
//  HandPoseMLModel.swift
//  machine-learning
//
//  Created by Farid Andika on 12/05/24.
//

class HandPoseInput {
    var poses: MLMultiArray
    
    init(poses: MLMultiArray) {
        self.poses = poses
    }
}


class HandPoseOutput {
    let provider : MLFeatureProvider


    lazy var labelProbabilities: [String : Double] = { [unowned self] in
        self.getOutputProbabilities()
    }()


    lazy var label: String = { [unowned self] in
        self.getOutputLabel()
    }()


    init(features: MLFeatureProvider) {
        self.provider = features
    }
}
