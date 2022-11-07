//
//  BranchsGateway.swift
//  iOS_Rasid
//
//  Created by Fintech on 06/11/2022.
//

import Foundation

protocol BranchsGateway {
    
    func getBranchs(for facilityId: Int,
                    completionHandler: @escaping (Result<[BranchEntity], Error>) -> Void)
    func getBranchDetails(for branchId: Int,
                          completionHandler: @escaping (Result<[BranchDetailsEntity], Error>) -> Void)
}