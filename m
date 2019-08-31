Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 69218A59E0
	for <lists.bridge@lfdr.de>; Mon,  2 Sep 2019 16:54:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EA976E38;
	Mon,  2 Sep 2019 14:52:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 003FD63BE
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 04:42:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 992A4F1
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 04:42:39 +0000 (UTC)
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7V4frRO042221; Sat, 31 Aug 2019 00:42:37 -0400
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
	[169.53.41.122])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2uq0ktq20w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sat, 31 Aug 2019 00:42:36 -0400
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x7V4eRoF008866; Sat, 31 Aug 2019 04:42:35 GMT
Received: from b03cxnp08027.gho.boulder.ibm.com
	(b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by ppma04dal.us.ibm.com with ESMTP id 2uqgh60g3b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sat, 31 Aug 2019 04:42:35 +0000
Received: from b03ledav004.gho.boulder.ibm.com
	(b03ledav004.gho.boulder.ibm.com [9.17.130.235])
	by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id x7V4gY3X58261846
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Sat, 31 Aug 2019 04:42:34 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 790DD7805C;
	Sat, 31 Aug 2019 04:42:34 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id AC0357805E;
	Sat, 31 Aug 2019 04:42:31 +0000 (GMT)
Received: from LeoBras (unknown [9.80.210.156])
	by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
	Sat, 31 Aug 2019 04:42:31 +0000 (GMT)
Message-ID: <2ba876f9ad6597e640df68f09659dce3c4b5ce03.camel@linux.ibm.com>
From: Leonardo Bras <leonardo@linux.ibm.com>
To: Florian Westphal <fw@strlen.de>
Date: Sat, 31 Aug 2019 01:42:29 -0300
In-Reply-To: <20190830205541.GR20113@breakpoint.cc>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
	<20190830181354.26279-3-leonardo@linux.ibm.com>
	<20190830205541.GR20113@breakpoint.cc>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NmceabA7waNjtZ157fkz"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-31_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908310052
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 02 Sep 2019 14:52:47 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH v4 2/2] net: br_netfiler_hooks: Drops IPv6
 packets if IPv6 module is not loaded
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org


--=-NmceabA7waNjtZ157fkz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-08-30 at 22:55 +0200, Florian Westphal wrote:
> Leonardo Bras <leonardo@linux.ibm.com> wrote:
> > A kernel panic can happen if a host has disabled IPv6 on boot and have =
to
> > process guest packets (coming from a bridge) using it's ip6tables.
> >=20
> > IPv6 packets need to be dropped if the IPv6 module is not loaded.
> >=20
> > Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> > ---
> >  net/bridge/br_netfilter_hooks.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_=
hooks.c
> > index d3f9592f4ff8..5e8693730df1 100644
> > --- a/net/bridge/br_netfilter_hooks.c
> > +++ b/net/bridge/br_netfilter_hooks.c
> > @@ -493,6 +493,8 @@ static unsigned int br_nf_pre_routing(void *priv,
> >  	brnet =3D net_generic(state->net, brnf_net_id);
> >  	if (IS_IPV6(skb) || is_vlan_ipv6(skb, state->net) ||
> >  	    is_pppoe_ipv6(skb, state->net)) {
> > +		if (!ipv6_mod_enabled())
> > +			return NF_DROP;
> >  		if (!brnet->call_ip6tables &&
> >  		    !br_opt_get(br, BROPT_NF_CALL_IP6TABLES))
> >  			return NF_ACCEPT;
>=20
> No, thats too aggressive and turns the bridge into an ipv6 blackhole.
>=20
> There are two solutions:
> 1. The above patch, but use NF_ACCEPT instead
> 2. keep the DROP, but move it below the call_ip6tables test,
>    so that users can tweak call-ip6tables to accept packets.

Q: Does 2 mean that it will only be dropped if bridge intents to use
host's ip6tables? Else, it will be accepted by previous if?

> Perhaps it would be good to also add a pr_warn_once() that
> tells that ipv6 was disabled on command line and
> call-ip6tables isn't supported in this configuration.
>=20
Good idea, added.

> I would go with option two.
I think it's better than 1 too.

I sent a v5 with these changes:
https://lkml.org/lkml/2019/8/31/4

Thanks!

Leonardo Bras

--=-NmceabA7waNjtZ157fkz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAl1p+rUACgkQlQYWtz9S
ttSbUxAAr5vWLsGmro0HQCOExyLhf5zWEHkHJXUbjLocdlp1f3FOsgmu5Wz8noQs
gbPstMKc4dGJDZ5kFiTlYT4rxDP4zms84JzRohrjWvM/W/quuAS063wMCqjbFq6r
F8HUhED6VGd3ViAeEASkwHMjgCdla9y5M9/V84GxBlQ+ZVt0hFqon8Q3Us0OLMoA
91TfahVL8FyhW2w6h5F/oCYG2oD+2KqGScCjoZ0tVyppJP9GUI63E7pEwodXsDHH
MW153XedTgyNnHl5CK9LBLX2lHXZi4O8cauVqXWnbDyvJl/VaRzCUAnNLSdjTM3X
SmXy+5iLTuxnpIAr9esXdXdFXaIV7FnMwXHvBIkXdT1KOVZcmJg5NnZaswjP4LAD
fJbNAKky0A56keHQ8bi7CqQ2+GmVK4wMyANAXaow2OynLvZbw/vhQzoqi5wjuP4p
Z+nHh2n2BTTjY1ZcJJLjMRi12DIZFLDYnqpu4vXEvmhp3PtlO5BCg0C+A1HWtSdq
0oVzl+MXOKhtZF5H7wwIV5wjC5Ij88TaDEatC1iYZE8AhADlDZ2foHCVoFZm2OGr
+ggS9vYmGiqw5zSHFQSqY6PVKdSPxg25Zoe+um2J0KCbVhldmEjBIJ1lXgeICPEx
AK8YyIJB14V5H3Ef4EveO77t3tYQon28WfOix1tSQ9+//XVUlVU=
=lpBD
-----END PGP SIGNATURE-----

--=-NmceabA7waNjtZ157fkz--

