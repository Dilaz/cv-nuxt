<template>
    <a :href="url">
        <img width="149" height="149"
            src="https://github.blog/wp-content/uploads/2008/12/forkme_right_white_ffffff.png?resize=149%2C149"
            class="attachment-full size-full" alt="Fork me on GitHub" data-recalc-dims="1">
    </a>
</template>

<script>
export default {
    props: {
        url: String,
    },
}
</script>

<style scoped>
a {
    position: absolute;
    top: 0;
    right: 0;
}
</style>
