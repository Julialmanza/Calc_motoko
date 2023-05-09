import Float "mo:base/Float";

actor Counter {

    //variable mutable llamada counter.
    var counter : Float = 0.0;

    // add.
    public shared func add(x : Float) : async Float {
        counter += x;
        return counter;
    };

    // sub.
    public shared func sub(x : Float) : async Float {
        counter -= x;
        return counter;
    };

    // mul.
    public shared func mul(x : Float) : async Float {
        counter *= x;
        return counter;
    };

    // div.
    public shared func div(x : Float) : async ?Float {
        if (x == 0) {
           
            return null;
        } else {
            counter /= x;
            return ?counter;
        };
    };

    // reset.
    public shared func reset() : async () {
        counter := 0;
    };

    // query.
    public shared query func see() : async Float {
        return counter;
    };

    // power.
    public shared func power(x : Float) : async Float {
        counter := Float.pow(counter, x);
        return counter;
    };

    // sqrt.
    public shared func sqrt() : async Float {
        counter := counter ** 0.5;
        return counter;
    };

    // floor.
    public shared func floor() : async Int {
        return Float.toInt(counter);
    };

};