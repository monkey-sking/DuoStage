import Foundation

public extension StagePrompt {
    static let launchPack: [StagePrompt] = [
        // Couple — relationship boundaries create immediate disagreement and comment hooks.
        .init(category: "Couple", title: "Live location", sideA: "Should serious couples share their location 24/7?", sideB: "Should serious couples share their location 24/7?", revealLabel: "Trust or control?"),
        .init(category: "Couple", title: "Phone privacy", sideA: "Should partners be allowed to look through each other’s phones?", sideB: "Should partners be allowed to look through each other’s phones?", revealLabel: "Privacy vs transparency"),
        .init(category: "Couple", title: "Friends with an ex", sideA: "Can you stay close friends with an ex in a serious relationship?", sideB: "Can you stay close friends with an ex in a serious relationship?", revealLabel: "Healthy or messy?"),
        .init(category: "Couple", title: "Thirst-trap likes", sideA: "Is repeatedly liking thirst traps a relationship problem?", sideB: "Is repeatedly liking thirst traps a relationship problem?", revealLabel: "Harmless or disrespectful?"),
        .init(category: "Couple", title: "Who pays more", sideA: "If one partner earns 3× more, should they pay more than 50% of shared costs?", sideB: "If one partner earns 3× more, should they pay more than 50% of shared costs?", revealLabel: "Equal or fair?"),
        .init(category: "Couple", title: "Post the relationship", sideA: "If your partner never posts you, is that a red flag?", sideB: "If your partner never posts you, is that a red flag?", revealLabel: "Private or hidden?"),

        // Friends — loyalty, money and social status create strong group reactions.
        .init(category: "Friends", title: "Friend’s ex", sideA: "Is dating a friend’s ex ever acceptable?", sideB: "Is dating a friend’s ex ever acceptable?", revealLabel: "Fair game?"),
        .init(category: "Friends", title: "Better plans", sideA: "Is it ever okay to cancel plans because a better opportunity came up?", sideB: "Is it ever okay to cancel plans because a better opportunity came up?", revealLabel: "Upgrade or betrayal?"),
        .init(category: "Friends", title: "Group-chat leak", sideA: "Could you forgive a friend who leaked the private group chat?", sideB: "Could you forgive a friend who leaked the private group chat?", revealLabel: "Trust reset?"),
        .init(category: "Friends", title: "Relationship vanish", sideA: "Who is more likely to disappear from the friend group after getting into a relationship?", sideB: "Who is more likely to disappear from the friend group after getting into a relationship?", revealLabel: "We all know one"),
        .init(category: "Friends", title: "Loan a month’s rent", sideA: "Would you lend a close friend one month’s rent with no written agreement?", sideB: "Would you lend a close friend one month’s rent with no written agreement?", revealLabel: "Friendship vs money"),
        .init(category: "Friends", title: "Unasked truth", sideA: "Should a real friend tell you your partner is bad for you even if you never asked?", sideB: "Should a real friend tell you your partner is bad for you even if you never asked?", revealLabel: "Honest or intrusive?"),

        // Family — familiar parenting debates that invite viewers to take sides without targeting a child.
        .init(category: "Family", title: "Post the kids", sideA: "Should parents ask their kids before posting them online?", sideB: "Should parents ask their kids before posting them online?", revealLabel: "Memory or privacy?"),
        .init(category: "Family", title: "Check the phone", sideA: "Should parents be allowed to check a teenager’s phone without asking?", sideB: "Should parents be allowed to check a teenager’s phone without asking?", revealLabel: "Safety or privacy?"),
        .init(category: "Family", title: "Allowance", sideA: "Should allowance be earned through chores?", sideB: "Should allowance be earned through chores?", revealLabel: "Earn it?"),
        .init(category: "Family", title: "Phone punishment", sideA: "Is taking away a phone a fair punishment?", sideB: "Is taking away a phone a fair punishment?", revealLabel: "Fair or too far?"),
        .init(category: "Family", title: "Paid for grades", sideA: "Should kids be paid for getting good grades?", sideB: "Should kids be paid for getting good grades?", revealLabel: "Motivation or bribery?"),
        .init(category: "Family", title: "Strict or free", sideA: "Which raises more capable kids: strict rules or more freedom?", sideB: "Which raises more capable kids: strict rules or more freedom?", revealLabel: "Pick a side"),

        // Stranger — social norms work even when the two participants do not know each other.
        .init(category: "Stranger", title: "Salary on date one", sideA: "Is asking someone’s salary on a first date rude or reasonable?", sideB: "Is asking someone’s salary on a first date rude or reasonable?", revealLabel: "Too soon?"),
        .init(category: "Stranger", title: "Ghosting", sideA: "Is ghosting ever acceptable after one date?", sideB: "Is ghosting ever acceptable after one date?", revealLabel: "Protect peace or be polite?"),
        .init(category: "Stranger", title: "No social media", sideA: "No social media: green flag or red flag?", sideB: "No social media: green flag or red flag?", revealLabel: "Suspicious or peaceful?"),
        .init(category: "Stranger", title: "Before exclusivity", sideA: "Before exclusivity, is dating multiple people at once completely fine?", sideB: "Before exclusivity, is dating multiple people at once completely fine?", revealLabel: "Normal or messy?"),
        .init(category: "Stranger", title: "Income gap", sideA: "Would a big income gap matter to you in dating?", sideB: "Would a big income gap matter to you in dating?", revealLabel: "Love vs lifestyle"),
        .init(category: "Stranger", title: "Ten-year gap", sideA: "For two adults, is a 10-year age gap normal or a red flag?", sideB: "For two adults, is a 10-year age gap normal or a red flag?", revealLabel: "Age is just a number?"),

        // Creator — taste, authenticity and AI are naturally commentable on short-form platforms.
        .init(category: "Creator", title: "AI stylist", sideA: "If AI styles you better than a human stylist, does it matter who made the choice?", sideB: "If AI styles you better than a human stylist, does it matter who made the choice?", revealLabel: "Taste vs tool"),
        .init(category: "Creator", title: "Designer logos", sideA: "Big designer logos: status or insecurity?", sideB: "Big designer logos: status or insecurity?", revealLabel: "Luxury or flex?"),
        .init(category: "Creator", title: "Repeat the outfit", sideA: "Repeating the same outfit in multiple posts: confident or lazy?", sideB: "Repeating the same outfit in multiple posts: confident or lazy?", revealLabel: "Repeat it?"),
        .init(category: "Creator", title: "Designer dupe", sideA: "A designer dupe: smart buy or fake flex?", sideB: "A designer dupe: smart buy or fake flex?", revealLabel: "Value or vanity?"),
        .init(category: "Creator", title: "Beauty filters", sideA: "Heavy beauty filters: harmless fun or dishonest?", sideB: "Heavy beauty filters: harmless fun or dishonest?", revealLabel: "Edit or deceive?"),
        .init(category: "Creator", title: "Label AI edits", sideA: "Should creators label AI-enhanced photos every time?", sideB: "Should creators label AI-enhanced photos every time?", revealLabel: "Disclosure required?" )
    ]
}
