<template>
    <svg>
        <use :xlink:href="'/img/icons/iconpack.svg#icon-' + name"></use>
    </svg>
</template>

<script>
export default {
    props: {
        name: String,
    },
}
</script>

<style scoped lang="scss">
svg {
    $size: 12px;
    height: $size;
    width: $size;
    display: inline-block;
    margin-right: 3px;
}
</style>
