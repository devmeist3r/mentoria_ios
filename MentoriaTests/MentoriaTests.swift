import XCTest
import Nimble
import Quick

@testable import Mentoria

class MentoriaTests: QuickSpec {
    
    override func spec() {
        describe("User") {
            context("when user is created") {
                it("the struct has default value") {
                    let user = User(name: "Lucas", lastName: "Inocencio", isHuman: true)
                    expect(user.name).to(equal("Lucas"))
                    expect(user.lastName).toNot(beNil())
                    expect(user.isHuman).to(beTrue())
                }
            }
        }
        
        describe("DataSource") {
            context("when load function is called") {
                it("should isLoad value be true") {
                    let dataSource = DataSourceMock()
                    dataSource.load()
                    expect(dataSource.isLoad).to(beTrue())
                }
            }
            
            context("when save function is called") {
                it("should isSave value be true") {
                    let dataSource = DataSourceMock()
                    dataSource.save()
                    expect(dataSource.isSave).to(beTrue())
                }
            }
        }
    }
    
}
