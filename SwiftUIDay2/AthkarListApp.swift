//
//  AthkarListApp.swift
//  SwiftUIDay2
//
//  Created by shaikha aljenaidel on 8/22/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct AthkarListApp: View {
    @State var counter = ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]
     @State var athkar = [
        """
    اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255].
    """
        ,
        
        """
            قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.
            """
        ,
        
        """
            قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.
    """
        ,
        
        
        """
    قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.
    """,
        """
    أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر.
    """,
        """
    اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ .
    """,
        
        """
    رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً.
    """,
        """
    اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك.
    """,
        """
    اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.
    """,
        """
    أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ.
    """
    ]
    
     var body: some View {
        NavigationView{
            List{
                
                NavigationLink(destination: Thekr(thekr: $athkar[0], counter: $counter[0])) {
                    VStack{
                    Text("\(self.athkar[0])").modifier(ThekrModifier())
                    Text(self.counter[0]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[1], counter: $counter[1])) {
                    VStack{
                    Text("\(self.athkar[1])").modifier(ThekrModifier())
                    Text(self.counter[1]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[2], counter: $counter[2])) {
                    VStack{
                    Text("\(self.athkar[2])").modifier(ThekrModifier())
                    Text(self.counter[2]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[3], counter: $counter[3])) {
                    VStack{
                    Text("\(self.athkar[3])").modifier(ThekrModifier())
                    Text(self.counter[3]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[4], counter: $counter[4])) {
                    VStack{
                    Text("\(self.athkar[4])").modifier(ThekrModifier())
                    Text(self.counter[4]).modifier(CounterModifier())
                }
                }
                
                
                NavigationLink(destination: Thekr(thekr: $athkar[5], counter: $counter[5])) {
                    VStack{
                    Text("\(self.athkar[5])").modifier(ThekrModifier())
                    Text(self.counter[5]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[6], counter: $counter[6])) {
                    VStack{
                    Text("\(self.athkar[6])").modifier(ThekrModifier())
                    Text(self.counter[6]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[7], counter: $counter[7])) {
                    VStack{
                    Text("\(self.athkar[7])").modifier(ThekrModifier())
                    Text(self.counter[7]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[8], counter: $counter[8])) {
                    VStack{
                    Text("\(self.athkar[8])").modifier(ThekrModifier())
                    Text(self.counter[8]).modifier(CounterModifier())
                }
                }
                
                NavigationLink(destination: Thekr(thekr: $athkar[9], counter: $counter[9])) {
                    VStack{
                    Text("\(self.athkar[9])").modifier(ThekrModifier())
                    Text(self.counter[9]).modifier(CounterModifier())
                }
                }
//                VStack{
//                    Button(action: {
//                        self.counter = String(Int(self.counter)! + 1)
//                    }) {
//                        Text(self.counter).modifier(CounterModifier())
//                    }
//                    //                            Button(self.counter).modifier(CounterModifier())
//                    Text(thekr).modifier(ThekrModifier())
//                }
//                ForEach(athkar.indices, id: \.self) { thekr in
                    
//                    NavigationLink(destination: CounterButton(thekr: self.$athkar[thekr.self], counter: $counter)
//                        VStack{
//                        Button(action: {
//                            self.counter = String(Int(self.counter)! + 1)
//                        }) {
//                            Text(self.counter).modifier(CounterModifier())
//                        }
//                        //                            Button(self.counter).modifier(CounterModifier())
//                        Text(self.athkar[thekr]).modifier(ThekrModifier())
//                    }
//                        ) {
                        
//                }
                
            }
            .navigationBarTitle("Athkar")
        }
    }


struct AthkarListApp_Previews: PreviewProvider {
    static var previews: some View {
        AthkarListApp()
    }
}

//struct CounterButton: View {
//     @Binding var athkar: [String]
//     @Binding var thekr: String
//    @Binding var counter: String
//    var body: some View {
//        VStack{
//            Button(action: {
//                self.counter = String(Int(self.counter)! + 1)
//            }) {
//                Text(self.counter).modifier(CounterModifier())
//            }
//            //                            Button(self.counter).modifier(CounterModifier())
//            Text(thekr).modifier(ThekrModifier())
//        }
//}
//}
//}

struct Thekr: View {
    @Binding var thekr: String
    @Binding var counter: String
    var body: some View {
      VStack{
          Text(thekr).font(.largeTitle)
            .multilineTextAlignment(.center)
          Button(action: {
              self.counter = String(Int(self.counter)! + 1)
          }) {
              Text(counter)
                  .font(.largeTitle)
                  .foregroundColor(.white)
          }.frame(width: 100, height: 100, alignment: .center)
            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
              .clipShape(Circle())
              .padding()
      }

    }
}
}
