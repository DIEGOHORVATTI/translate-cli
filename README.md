# Translation Script

This is a simple shell script for translating text between languages using the Google Translate API. It allows you to specify the source and target languages and provides the translated text as output.

## Prerequisites

*   `curl` must be installed on your system.
*   Access to the Google Translate API.

## Usage

The script takes two mandatory arguments:

```
./translate.sh <language_pair> <text>
```

### Parameters

*   `<language_pair>`: Specify the source and target languages in the format `source:target`, e.g., `pt-BR:en`.
*   `<text>`: The text you want to translate.

### Example

To translate "ola mundo" from Portuguese (Brazil) to English, run:

```
./translate.sh pt-BR:en 'ola mundo'
```

You can also include multiple words or phrases as the text to be translated:

```
./translate.sh pt-BR:en 'ola mundo' 'como você está?'
```

## Output

The translated text will be printed to the console. If an error occurs during the translation process, an error message will be displayed.

## Notes

*   Ensure you have an active internet connection, as the script makes a web request to the translation API.
*   If the translation API responds with an error, the script will inform you of the issue.
