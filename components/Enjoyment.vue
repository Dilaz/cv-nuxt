<template>
    <div class="enjoyment">
        <span>Enjoyment: </span>
        <span class="screen-reader-only">{{ enjoyment }} out of 5</span>
        <div class="rating" aria-hidden="true">
            <span v-for="i in enjoyment" :key="i">
                <Icon name="heart"></Icon>
            </span>
        </div>
    </div>
</template>

<script>
import Icon from './Icon.vue';
export default {
    props: {
        enjoyment: Number,
    },
    components: { Icon },
}
</script>

<style scoped>
svg {
    fill: red;
}

.enjoyment {
    display: flex;
}

.rating {
    display: flex;
    margin-left: 5px;
    align-items: center;
}
</style>
