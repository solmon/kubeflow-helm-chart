{{/*
Expand the name of the chart.
*/}}
{{- define "kubeflow-helm-chart.name" -}}
{{- .Chart.Name | quote -}}
{{- end -}}

{{/*
Expand the full name of the chart.
*/}}
{{- define "kubeflow-helm-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | quote -}}
{{- end -}}

{{/*
Return the default image name and tag.
*/}}
{{- define "kubeflow-helm-chart.image" -}}
{{- printf "%s:%s" .Values.image.repository .Values.image.tag | quote -}}
{{- end -}}

{{/*
Return the service account name.
*/}}
{{- define "kubeflow-helm-chart.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- .Release.Name | quote -}}
{{- else -}}
{{- .Values.serviceAccount.name | quote -}}
{{- end -}}
{{- end -}}

{{/*
Return the labels for the resources.
*/}}
{{- define "kubeflow-helm-chart.labels" -}}
app: {{ include "kubeflow-helm-chart.name" . }}
release: {{ .Release.Name }}
{{- end -}}