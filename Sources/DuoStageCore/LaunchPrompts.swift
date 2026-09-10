import Foundation

public extension StagePrompt {
    static let launchPack: [StagePrompt] = [
        .init(category: "Couple", title: "First impression", sideA: "What color was B wearing when you first met?", sideB: "What color was A wearing when you first met?", revealLabel: "Same memory?"),
        .init(category: "Couple", title: "First move", sideA: "Who liked the other person first?", sideB: "Who liked the other person first?", revealLabel: "Who fell first?"),
        .init(category: "Couple", title: "I love you", sideA: "Who said ‘I love you’ first?", sideB: "Who said ‘I love you’ first?", revealLabel: "Same story?"),
        .init(category: "Couple", title: "After an argument", sideA: "Who apologizes first after a fight?", sideB: "Who apologizes first after a fight?", revealLabel: "Peace maker"),
        .init(category: "Couple", title: "Food delivery", sideA: "Who spends more on food delivery?", sideB: "Who spends more on food delivery?", revealLabel: "Receipts please"),
        .init(category: "Couple", title: "Next trip", sideA: "Pick the trip B secretly wants next.", sideB: "Pick the trip A secretly wants next.", revealLabel: "Travel sync"),
        .init(category: "Friends", title: "2 AM text", sideA: "Who is most likely to text an ex at 2 AM?", sideB: "Who is most likely to text an ex at 2 AM?", revealLabel: "Expose them"),
        .init(category: "Friends", title: "No phone", sideA: "Who would survive longest with no phone?", sideB: "Who would survive longest with no phone?", revealLabel: "Offline winner"),
        .init(category: "Friends", title: "Secret leak", sideA: "Who would accidentally leak a secret first?", sideB: "Who would accidentally leak a secret first?", revealLabel: "Trust issues"),
        .init(category: "Friends", title: "Future famous", sideA: "Who is most likely to become famous?", sideB: "Who is most likely to become famous?", revealLabel: "Main character"),
        .init(category: "Friends", title: "Five minutes away", sideA: "Who always says ‘5 minutes away’ while still at home?", sideB: "Who always says ‘5 minutes away’ while still at home?", revealLabel: "Caught"),
        .init(category: "Friends", title: "Reality show", sideA: "Who would win a reality show?", sideB: "Who would win a reality show?", revealLabel: "Winner energy"),
        .init(category: "Family", title: "Mom’s favorite", sideA: "What is Mom’s favorite food?", sideB: "What does your child think your favorite food is?", revealLabel: "Family sync"),
        .init(category: "Family", title: "Draw Mom", sideA: "Draw Mom in 10 seconds.", sideB: "Draw yourself in 10 seconds.", revealLabel: "Portrait reveal"),
        .init(category: "Family", title: "Dad says", sideA: "What does Dad say most often?", sideB: "What does your child think you say most often?", revealLabel: "Catchphrase"),
        .init(category: "Family", title: "Wake-up battle", sideA: "Who is hardest to wake up?", sideB: "Who is hardest to wake up?", revealLabel: "Morning truth"),
        .init(category: "Family", title: "Snack thief", sideA: "Pick the snack B would steal first.", sideB: "Pick the snack A would steal first.", revealLabel: "Snack sync"),
        .init(category: "Family", title: "Next family trip", sideA: "Who should choose the next family trip?", sideB: "Who should choose the next family trip?", revealLabel: "Trip boss"),
        .init(category: "Stranger", title: "Outfit guess", sideA: "Guess which outfit B would choose.", sideB: "Guess which outfit A would choose.", revealLabel: "Style read"),
        .init(category: "Stranger", title: "Emoji read", sideA: "Guess B’s most-used emoji.", sideB: "Guess A’s most-used emoji.", revealLabel: "Emoji reveal"),
        .init(category: "Stranger", title: "Music vibe", sideA: "Pick the music genre that fits B’s vibe.", sideB: "Pick the music genre that fits A’s vibe.", revealLabel: "Vibe check"),
        .init(category: "Stranger", title: "Coffee or tea", sideA: "Guess: coffee or tea?", sideB: "Guess: coffee or tea?", revealLabel: "Quick read"),
        .init(category: "Stranger", title: "Morning or night", sideA: "Guess whether B is a morning person or night owl.", sideB: "Guess whether A is a morning person or night owl.", revealLabel: "Clocked"),
        .init(category: "Stranger", title: "Zombie movie", sideA: "Who would survive longer in a zombie movie?", sideB: "Who would survive longer in a zombie movie?", revealLabel: "Survivor"),
        .init(category: "Creator", title: "Two-piece look", sideA: "Secretly choose the top half of the outfit.", sideB: "Secretly choose the bottom half of the outfit.", revealLabel: "One look?"),
        .init(category: "Creator", title: "Main-character accessory", sideA: "Choose B’s main-character accessory.", sideB: "Choose A’s main-character accessory.", revealLabel: "Styled"),
        .init(category: "Creator", title: "Post or delete", sideA: "Pick the look B would post.", sideB: "Pick the look A would post.", revealLabel: "Post it?"),
        .init(category: "Creator", title: "Favorite color", sideA: "Guess B’s favorite color without speaking.", sideB: "Guess A’s favorite color without speaking.", revealLabel: "Color sync"),
        .init(category: "Creator", title: "Build one outfit", sideA: "Pick one hidden item for the final outfit.", sideB: "Pick one hidden item for the final outfit.", revealLabel: "Does it work?"),
        .init(category: "Creator", title: "Style era", sideA: "Pick a style era for B.", sideB: "Pick a style era for A.", revealLabel: "Era match")
    ]
}
