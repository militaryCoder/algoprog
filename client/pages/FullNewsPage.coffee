React = require('react')

import { Grid } from 'react-bootstrap'
import { Helmet } from "react-helmet"

import FullNews from '../components/FullNews'
import Sceleton from '../components/Sceleton'

import ConnectedComponent from './ConnectedComponent'

class FullNewsPage extends React.Component
    constructor: (props) ->
        super(props)

    render:  () ->
        sceletonProps = {@props..., location: {title: "Новости", path: @props.news.path, _id: @props.news._id}}
        `<Sceleton {...sceletonProps}><FullNews {...this.props}/></Sceleton>`


export default ConnectedComponent(FullNewsPage)
