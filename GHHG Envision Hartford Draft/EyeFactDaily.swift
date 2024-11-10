//
//  EyeFactDaily.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/9/24.
//

import SwiftUI

struct EyeFactDaily: View {
    let facts = [
        "Adults blink about 12 times each minute",
        "Most blinks last for approximately 1/3 of a second—that’s fast!",
        "There are three reasons we blink: to lubricate the eye, shield the eye by removing foreign objects like dust, and relieve fatigue by allowing ocular muscles to reorganize.",
        "One eyeball weighs about ¼ of an ounce—that means that together, your eyes weigh about half an ounce.",
        "More than 150 million Americans rely on corrective eyewear like glasses or contacts to correct refractive errors such as nearsightedness, farsightedness, and astigmatism, and see their best.",
        "70% of your body’s sense receptors are found in the eye, allowing us to process millions of pieces of information each second.",
        "About 2.4 million eye injuries occur in the United States each year.",
        "Wearing protective eyewear, such as safety goggles and glasses or face shields, can prevent 90% of all eye injuries",
        "Heterochromia occurs when a person has two different colored eyes.",
        "Brown eyes are the most common eye color",
        "Green eyes are the rarest eye color, with only 2% of the world’s population having green eyes.",
        "Your eye color is unique to you—nobody else in the world has your exact eye color.",
        "Everyone has a blind spot where the retina and optic nerve connect. However, most people don’t notice it because the brain fills in missing information. ",
        "Doctors have yet to discover how to transplant an eyeball. The optic nerve is made of millions of tiny fibers, making it impossible to reconnect them all successfully once they are cut. Doctors have, however, successfully completed corneal transplants.",
        "Seeing happens in your brain, not your eyes. Your eyes take in information in the form of light and sends this information to your brain, which interprets what your eyes see and report."
    ]
    
    // Computed property to get today's word
    var todayFact: String {
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        return facts[(dayOfYear - 1) % facts.count] // Ensure index is within bounds
    }
    

    var body: some View {
            VStack {
                Text("Eye Fact of the Day")
                    .font(.custom("Avenir Next", size: 24))
                    .padding(.bottom, 5)
                
                Text(todayFact)
                    .font(.custom("Avenir Next", size: 10))
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue.opacity(0.2))
                    )
                    .padding(.horizontal)
            }
            .padding()
        }
    }

struct EyeFactDaily_Previews: PreviewProvider {
    static var previews: some View {
        EyeFactDaily()
    }
}
