//
//  Deficient__Perfect__and_AbundantTest.swift
//  Deficient, Perfect, and AbundantTest
//
//  Created by Yuzhou Zhang on 2024-09-25.
//

import Testing

struct deficientPerfectOrAbundantTest {

    @Test func number4() {
        #expect(sumOfDivisors(number: 4, numberChecking: 1) == 7)
    }
    @Test func number6() {
        #expect(sumOfDivisors(number: 6, numberChecking: 1) == 12)
    }
    @Test func number12() {
        #expect(sumOfDivisors(number: 12, numberChecking: 1) == 28)
    }

}
