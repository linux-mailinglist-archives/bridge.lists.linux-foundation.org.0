Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8381BA70EE
	for <lists.bridge@lfdr.de>; Tue,  3 Sep 2019 18:47:15 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 03912DA3;
	Tue,  3 Sep 2019 16:47:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C08F7CCA
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 16:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0FFA6709
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 16:47:03 +0000 (UTC)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x83GkwGH041085; Tue, 3 Sep 2019 12:47:00 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
	[169.55.85.253])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2usu0btfrs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 03 Sep 2019 12:47:00 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
	by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x83GkVM1010308; Tue, 3 Sep 2019 16:46:59 GMT
Received: from b03cxnp07029.gho.boulder.ibm.com
	(b03cxnp07029.gho.boulder.ibm.com [9.17.130.16])
	by ppma01wdc.us.ibm.com with ESMTP id 2uqgh6krsu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 03 Sep 2019 16:46:59 +0000
Received: from b03ledav005.gho.boulder.ibm.com
	(b03ledav005.gho.boulder.ibm.com [9.17.130.236])
	by b03cxnp07029.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id x83GkwJb41943354
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Tue, 3 Sep 2019 16:46:58 GMT
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 952C1BE053;
	Tue,  3 Sep 2019 16:46:58 +0000 (GMT)
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 93DF7BE05A;
	Tue,  3 Sep 2019 16:46:55 +0000 (GMT)
Received: from LeoBras (unknown [9.80.220.79])
	by b03ledav005.gho.boulder.ibm.com (Postfix) with ESMTP;
	Tue,  3 Sep 2019 16:46:55 +0000 (GMT)
Message-ID: <99e3ef9c5ead1c95df697d49ab9cc83a95b0ac7c.camel@linux.ibm.com>
From: Leonardo Bras <leonardo@linux.ibm.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Date: Tue, 03 Sep 2019 13:46:50 -0300
In-Reply-To: <20190830205802.GS20113@breakpoint.cc>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
	<20190830181354.26279-2-leonardo@linux.ibm.com>
	<20190830205802.GS20113@breakpoint.cc>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-rrgSbHLI/0xPSTHf0NdV"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-09-03_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1909030171
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	FlorianWestphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
	Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v4 1/2] netfilter: Terminate rule eval if
 protocol=IPv6 and ipv6 module is disabled
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


--=-rrgSbHLI/0xPSTHf0NdV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-08-30 at 22:58 +0200, Florian Westphal wrote:
> Leonardo Bras <leonardo@linux.ibm.com> wrote:
> > If IPv6 is disabled on boot (ipv6.disable=3D1), but nft_fib_inet ends u=
p
> > dealing with a IPv6 packet, it causes a kernel panic in
> > fib6_node_lookup_1(), crashing in bad_page_fault.
> >=20
> > The panic is caused by trying to deference a very low address (0x38
> > in ppc64le), due to ipv6.fib6_main_tbl =3D NULL.
> > BUG: Kernel NULL pointer dereference at 0x00000038
> >=20
> > The kernel panic was reproduced in a host that disabled IPv6 on boot an=
d
> > have to process guest packets (coming from a bridge) using it's ip6tabl=
es.
> >=20
> > Terminate rule evaluation when packet protocol is IPv6 but the ipv6 mod=
ule
> > is not loaded.
> >=20
> > Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
>=20
> Acked-by: Florian Westphal <fw@strlen.de>
>=20

Hello Pablo,

Any trouble with this patch?=20
I could see the other* one got applied, but not this one.
*(The other did not get acked, so i released it alone as v5)

Is there any fix I need to do in this one?

Best regards,
Leonardo Bras

--=-rrgSbHLI/0xPSTHf0NdV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAl1umPoACgkQlQYWtz9S
ttTiuA//eKqD59zYaIAIlPAbMVWkpOfquO4lDm1Xeh+YuLGxUkxsydD1UoScNzBr
+TWn4e6Lb3ky6T51kawUC3oZOgz8Czxzx/Rmcs7SYVVzQpj+eTnAlRROcMg4oFr2
t6d8Bm2MRJeFd6nAw5KUsdFIgF7zng6qAq6NNBJprF90lM9l88w7D5vwGhUs6rOx
aGNG98+5JUM7D19OcfPuCNAf3mk5eWlYMouBHroAe5DMy93xLtacFMmUxtUrwz14
SooMEazcmg3TejHyYBE81lqU2J81CJhXBF0IkmzivMG7BCI47piq4+DF0tjg2Zqx
C+SxMJVW7szxurSiyAsLktbY8/fS4c0gtTneqHM5dDezY5YIRLKQGiDV5BUQ0+UK
zMB0UY4dlYbeBSqlmtfIuSnQakz0bBzNd1YVxfzo7rSMab3AAOqrkjPdi2HBRAw5
Q+9G3S2gF1CTLHZx0ybMBvFw79tWsBcUINx82nWJcUqEPaGNW4bhByxaG+CLQ8+s
5jQkDUrfgi75TrE2EBGJBOU94XAh5j1AHMrGLYu3Dq6wdNW4B527T1y51V2+zrBB
6vLlhpUuQz/g+YLgV8sc9UqRmpq1zi4kASkDI4lMN7ku4f+jvkpau0nT+QDGkL1/
zzA1mzWsg1sMbMDIPQ60FSv5a6n6pcyoQRqj5Y50wqpiW2pYW3M=
=8B6P
-----END PGP SIGNATURE-----

--=-rrgSbHLI/0xPSTHf0NdV--

