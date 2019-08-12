<template>
    <div>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="Find">
                发现内容
            </mt-tab-container-item >
            <mt-tab-container-item id="Collection">
                收藏
            </mt-tab-container-item >
            <mt-tab-container-item id="Message">
                消息
            </mt-tab-container-item>
            <mt-tab-container-item id="Mine">
                我
            </mt-tab-container-item>
        </mt-tab-container>
        <!-- 底部导航条 -->
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="Find">
                发现内容
            </mt-tab-item>
            <mt-tab-item id="Collection">
                收藏
            </mt-tab-item>
            <mt-tab-item id="Message">
                消息
            </mt-tab-item>
            <mt-tab-item id="Mine">
                我
            </mt-tab-item>
        </mt-tabbar>

    </div>
</template>
<script>
export default {
    data(){
        return {
            active:""
        }
    }
}
</script>
<style scoped>
    
</style>