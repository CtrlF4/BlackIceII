{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "blackice-ii",
    "graph": {
      "blocks": [
        {
          "id": "5a66d115-27fd-4399-9a06-7256e323b31b",
          "type": "basic.input",
          "data": {
            "name": "B1",
            "pins": [
              {
                "index": "0",
                "name": "D18",
                "value": "38"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": -104
          }
        },
        {
          "id": "f8d6cd19-0b6e-406e-9c6b-c43201c58733",
          "type": "basic.input",
          "data": {
            "name": "SW",
            "pins": [
              {
                "index": "0",
                "name": "D19",
                "value": "37"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": -32
          }
        },
        {
          "id": "22c57da6-8b93-4f92-a28c-df39d72df0bc",
          "type": "basic.output",
          "data": {
            "name": "LED3",
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "68"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1064,
            "y": 0
          }
        },
        {
          "id": "26b84ebe-401e-4fa2-8175-75d34d75e790",
          "type": "basic.output",
          "data": {
            "name": "LED1",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "71"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 616,
            "y": 16
          }
        },
        {
          "id": "5dc4dd82-4c36-42aa-9774-7744ae382f0f",
          "type": "basic.input",
          "data": {
            "name": "B1",
            "pins": [
              {
                "index": "0",
                "name": "D17",
                "value": "39"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": 40
          }
        },
        {
          "id": "2028a0fc-c773-4145-9ada-161c4cd90e90",
          "type": "basic.output",
          "data": {
            "name": "LED4",
            "pins": [
              {
                "index": "0",
                "name": "LED4",
                "value": "70"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1064,
            "y": 80
          }
        },
        {
          "id": "66221f09-64af-49ac-a3ea-62a5048fc23b",
          "type": "basic.input",
          "data": {
            "name": "SW",
            "pins": [
              {
                "index": "0",
                "name": "D16",
                "value": "41"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": 112
          }
        },
        {
          "id": "c380efba-16f7-48ac-aed3-e91f21f7aa1e",
          "type": "basic.output",
          "data": {
            "name": "LED2",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "67"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1064,
            "y": 160
          }
        },
        {
          "id": "50960bbd-8018-45bd-8191-dbe0090b47cb",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 888,
            "y": 0
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "00dc37ef-346b-46f0-8b3c-cae021faa915",
          "type": "basic.code",
          "data": {
            "code": "\nassign f = a & b & c & d;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a"
                },
                {
                  "name": "b"
                },
                {
                  "name": "c"
                },
                {
                  "name": "d"
                }
              ],
              "out": [
                {
                  "name": "f"
                }
              ]
            }
          },
          "position": {
            "x": 224,
            "y": -32
          },
          "size": {
            "width": 304,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "50960bbd-8018-45bd-8191-dbe0090b47cb",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "2028a0fc-c773-4145-9ada-161c4cd90e90",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "50960bbd-8018-45bd-8191-dbe0090b47cb",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "22c57da6-8b93-4f92-a28c-df39d72df0bc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5a66d115-27fd-4399-9a06-7256e323b31b",
            "port": "out"
          },
          "target": {
            "block": "00dc37ef-346b-46f0-8b3c-cae021faa915",
            "port": "a"
          }
        },
        {
          "source": {
            "block": "f8d6cd19-0b6e-406e-9c6b-c43201c58733",
            "port": "out"
          },
          "target": {
            "block": "00dc37ef-346b-46f0-8b3c-cae021faa915",
            "port": "b"
          }
        },
        {
          "source": {
            "block": "5dc4dd82-4c36-42aa-9774-7744ae382f0f",
            "port": "out"
          },
          "target": {
            "block": "00dc37ef-346b-46f0-8b3c-cae021faa915",
            "port": "c"
          }
        },
        {
          "source": {
            "block": "66221f09-64af-49ac-a3ea-62a5048fc23b",
            "port": "out"
          },
          "target": {
            "block": "00dc37ef-346b-46f0-8b3c-cae021faa915",
            "port": "d"
          }
        },
        {
          "source": {
            "block": "00dc37ef-346b-46f0-8b3c-cae021faa915",
            "port": "f"
          },
          "target": {
            "block": "26b84ebe-401e-4fa2-8175-75d34d75e790",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "50960bbd-8018-45bd-8191-dbe0090b47cb",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "c380efba-16f7-48ac-aed3-e91f21f7aa1e",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "c4dd08263a85a91ba53e2ae2b38de344c5efcb52": {
      "package": {
        "name": "Bit 0",
        "version": "1.0.0",
        "description": "Assign 0 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 0\n\nassign v = 1'b0;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}