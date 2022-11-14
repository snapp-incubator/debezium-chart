<center>
<img src="https://debezium.io/assets/images/color_white_debezium_type_600px.svg" style="width:256px;">
<p style="font-weight: bold; font-size: x-large">Debezium Helm Chart</p>
<p>Debezium helm chart including <span style="background: darkcyan">connect</span> and <span style="background: darkcyan">UI</span> components</p>
</center>

## Deployment
Update the following envs in `values.yaml`:
```yaml
connect:
  
  ...
  
  env:
    - name: BOOTSTRAP_SERVERS
      value: KAFKA_BOOTSTRAP_SERVER_ADDRESS:9092 <------
  
  ...

ui:
  ...
  
  ingress:
    enabled: true
    router: private
    host: DEBEZIUM_UI_HOST_ADDRESS  <----------
```

Use the following command to install the chart
```shell
helm install <CHART-NAME> debezium
```

## Be Cautious that
This chart is tested and installed on `OpenShift` successfully but use at your own risk. Feel free to open an issue for improvement or other matters.

## Todo List
- [ ] option to disable UI