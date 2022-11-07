<template>
    <div class="skill">
        <span>Skill: </span>
        <span class="screen-reader-only">{{ skill }} out of 5</span>
        <div class="rating" aria-hidden="true">
            <span v-for="i in skill">
                <Icon name="star-full"></Icon>
            </span>
        </div>
    </div>
</template>

<script>
import Icon from './Icon.vue';
export default {
    props: {
        skill: Number,
    },
    components: { Icon },
}
</script>

<style scoped lang="scss">
.skill {
    display: flex;
}

.rating {
    display: flex;
    margin-left: 5px;
    align-items: center;
}

svg {
    fill: yellow;
}
</style>
