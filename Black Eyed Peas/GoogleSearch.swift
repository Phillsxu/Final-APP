//
//  GoogleSearch.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import SwiftUI
import Foundation
struct GoogleSearch: View {
    @State private var showWebpage = false
    var body: some View {
        VStack{
            Image("Picture")
                .resizable()
                .scaledToFit()
            Text("Black Eyed Peas (also known as The Black Eyed Peas) is an American musical group, consisting of rappers will.i.am, apl.de.ap, Taboo and J. Rey Soul.[5] Originally an alternative hip hop group, they subsequently refashioned themselves as a more marketable pop-rap act.[4] Although the group was founded in Los Angeles in 1995, it was not until the release of their third album, Elephunk, in 2003, that they achieved high record sales. Black Eyed Peas and Shakira's music video ranked 4th in global charts.")
                .padding()
            Button("Search Profiles on Google") {
                showWebpage = true
            }
            .sheet(isPresented: $showWebpage) {
                WebsiteView(url: URL(string: "https://www.google.com/search?client=safari&sxsrf=ALeKk006t--wfNJqcJbxQMswB_GlJ0EiXw%3A1610369884558&ei=XEv8X9vaIeSIr7wPp-epkAQ&q=black+eyed+peas&gs_ssp=eJzj4tTP1TcwTCkvSjZg9OJPyklMzlZIrUxNUShITSwGAHsMCQc&oq=Black+E&gs_lcp=CgZwc3ktYWIQAxgBMgcIIxDJAxAnMgQILhBDMgQIABBDMgQIABBDMgQILhBDMgQIABBDMgIILjICCC4yAggAMgIIADoECCMQJzoECC4QClD0sA1Y27gNYJvHDWgCcAB4AIABfIgBxgaSAQMzLjWYAQCgAQGqAQdnd3Mtd2l6wAEB&sclient=psy-ab")!)
            }
        }
    }
}
