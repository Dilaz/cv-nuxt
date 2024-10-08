<template>
    <svg class="icon">
        <use :xlink:href="'/iconpack.svg#icon-' + name"></use>
    </svg>
</template>

<script>
export default {
    props: {
        name: String,
    },
}
</script>

<style scoped>
.icon {
    height: 12px;
    width: 12px;
    display: inline-block;
    margin-right: 3px;
}
</style>
