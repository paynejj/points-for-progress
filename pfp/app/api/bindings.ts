// @generated automatically by Rapid-web (https://rapid.cincinnati.ventures). DO NOT CHANGE OR EDIT THIS FILE!

export interface Handlers {
	queries: {
		"hello": {
  			output: any
  			type: 'query'
  			isDynamic: false
		},

		"index": {
  			output: any
  			type: 'query'
  			isDynamic: false
		},
	},
	mutations: {},
}

export const routes = {
	"hello": {
		url: '/hello',
		type: 'query',
	},
	"index": {
		url: '/',
		type: 'query',
	},
} as const