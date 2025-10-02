package runners;

import com.intuit.karate.junit5.Karate;

public class runnerKarate {
    @Karate.Test
    Karate testUsuarios() {
        return Karate.run("src/test/java/resources/feature/registrarUsuarios.feature");
    }
}
