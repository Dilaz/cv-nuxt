<template>
    <section class="skills">
        <article class="skill" v-for="skill in skills" :key="skill.name">
            <h2>{{ skill.name }}</h2>
            <p v-if="skill.info">{{ skill.info }}</p>
            <Skill v-if="skill.skill" :skill="skill.skill"></Skill>
            <Enjoyment v-if="skill.enjoyment" :enjoyment="skill.enjoyment"></Enjoyment>
            <div class="extra" v-if="skill.libs && skill.libs.length !== 0">
                <h3 v-if="skill.skill">Other skills related to {{ skill.name }}</h3>
                <div class="subskill" v-for="lib in skill.libs" :key="lib.name">
                    <h4>{{ lib.name }}</h4>
                    <p v-if="lib.info">{{ lib.info }}</p>
                    <Skill v-if="lib.skill" :skill="lib.skill"></Skill>
                    <Enjoyment v-if="lib.enjoyment" :enjoyment="lib.enjoyment"></Enjoyment>
                </div>
            </div>
        </article>
    </section>
</template>

<script>
import skills from "../skills.json";
import Enjoyment from "./Enjoyment";
import Skill from "./Skill";
export default {
    data() {
        return {
            skills,
        }
    },
    componens: { Skill, Enjoyment },
}
</script>

<style scoped>
article {
    margin-top: 40px;

    h2 {
        margin-top: 0;
    }
}

.subskill {
    padding-left: 40px;

    h4 {
        margin: 10px 0 0;
    }

    p {
        margin: 0;
    }
}
</style>
