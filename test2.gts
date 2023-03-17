const r =
const x = <template>
    <BsModal @onClose={{fn this.close}}>
    <:header>Storage Silo Control - {{@content.building.name}}</:header>
    <:body>
    <img>
        {{didInsert this.setup}}
    {{#each-in this.resources as |key|}}
    <img
        src="resources/images/custom/{{key}}.png"
    alt=""
    style="height: 32px; width: 32px"
    />
    <BsTooltip @targetSibling="up">{{key}}</BsTooltip>
    {{get this.resources key}} units / {{this.getMax key}}
    <BsSlider @value={{get this.resources key}} @onChange={{fn this.setResourceValue key}} @max={{this.getMax key}} />
    {{/each-in}}
    </:body>
    <:footer as |footer|>
        <BsButton @size="md" @type="primary" @onClick={{this.apply}}>Save</BsButton>
    <BsButton @size="md" @type="danger" @onClick={{footer.doClose}}>Cancel</BsButton>
    </:footer>
    </BsModal>

</template>


