Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1676B24120E
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93C5A87896;
	Mon, 10 Aug 2020 21:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6DAuYTZrmKz; Mon, 10 Aug 2020 21:05:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 425C68780A;
	Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 28B84C004D;
	Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2CF81C004C
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 08:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21E4086DB4
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 08:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9+nDwDgdYTpL for <bridge@lists.linux-foundation.org>;
 Tue,  4 Aug 2020 08:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6B60486DB2
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 08:44:23 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id g33so4304826pgb.4
 for <bridge@lists.linux-foundation.org>; Tue, 04 Aug 2020 01:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eWwJ/a7QBBjnbe2aSh2ByYIlhZsdMY2b5ItjjnovC1g=;
 b=Gh3K00BkOE05Vp5ngQOep4oUwnITWf/KjBm+G+MAMhFh/t7tgmJcGFh2nKdgr3Kb3b
 JiQmAP2Pv+3g7dJLAVqDWFNRqmfVWBiOYUJpn4QaEUpCjUgJjChZUiciSRrAf0UkthJW
 yGQhHFxGoDUj6uOh9GxoAEOf/rWcPCnXXMORu6rzcLwd1ktFtDU29TInIxEY6nhv6Bog
 nGNAep7zNfiIFrpn/DHyAEVgBWwCscrI6/pYaMnTjveONJbNbKS3IfP6HhpKsbTP8cj3
 +A5p4i+d789EUowB0hCOxbxeJuzgdx3hFFqt2cJGaTHG7R9QG2YJMXU9+euiEvDPfRoT
 wA0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eWwJ/a7QBBjnbe2aSh2ByYIlhZsdMY2b5ItjjnovC1g=;
 b=EjzVtHQR62ytkA767Sgkmiymb1KbDGBCVvKRpXTgZPgHsjHBAhISKrmj/2MSv8xegO
 ew6i5IjVBQ8QHp8pQY7yFB66VXxQQdx1hlHKXCoGNxZsYdm2XgDpLxWs/bKS373PVLmm
 Gwv/t/3XCfRi6cK+cdrgURPCRePXCXayg8vaF36hy+HfjcHUm1hovKjFAbzmTQOQJCA1
 haJqibWlopS9Sw9EII6Js4XZHGLNPOJIGZcQ12QsWaFiVANR7XVg5+3rJJ8NBO5rZb9A
 Ddrwj/R5XicdltXYZDaMZMuzfzvTzZLNWu93iEQkv4BIG7UoeCyf9XTDrm3pqs+lf2pa
 SWCw==
X-Gm-Message-State: AOAM531130+oM5vvI8xX8h/auYkxUpDAievnPlH5YL3hpp4SNupe+h8c
 tBeiOaYG3mHVECQ4XnB02rU=
X-Google-Smtp-Source: ABdhPJz6e7LLP9kn6VPMwJtSQp6jKb37yjMi//OkzpQmg+6SOWGeogYXfFtE402pnu9PLx/P9Px9bA==
X-Received: by 2002:a62:19d4:: with SMTP id 203mr1498495pfz.127.1596530662993; 
 Tue, 04 Aug 2020 01:44:22 -0700 (PDT)
Received: from [192.168.97.34] (p7925058-ipngn38401marunouchi.tokyo.ocn.ne.jp.
 [122.16.223.58])
 by smtp.gmail.com with ESMTPSA id h4sm12423418pgq.9.2020.08.04.01.44.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Aug 2020 01:44:22 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
In-Reply-To: <20200731115225.GA5097@ranger.igk.intel.com>
Date: Tue, 4 Aug 2020 17:44:17 +0900
Content-Transfer-Encoding: quoted-printable
Message-Id: <EA1B78C7-3E3C-4A7E-8367-76189AEBE509@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
 <20200731115225.GA5097@ranger.igk.intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, David Ahern <dsahern@kernel.org>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 2/3] bpf: Add helper to do
 forwarding lookups in kernel FDB table
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


> 2020/07/31 20:52=E3=80=81Maciej Fijalkowski =
<maciej.fijalkowski@intel.com>=E3=81=AE=E3=83=A1=E3=83=BC=E3=83=AB:
>=20
> On Fri, Jul 31, 2020 at 01:44:19PM +0900, Yoshiki Komachi wrote:
>> This patch adds a new bpf helper to access FDB in the kernel tables
>> from XDP programs. The helper enables us to find the destination port
>> of master bridge in XDP layer with high speed. If an entry in the
>> tables is successfully found, egress device index will be returned.
>>=20
>> In cases of failure, packets will be dropped or forwarded to upper
>> networking stack in the kernel by XDP programs. Multicast and =
broadcast
>> packets are currently not supported. Thus, these will need to be
>> passed to upper layer on the basis of XDP_PASS action.
>>=20
>> The API uses destination MAC and VLAN ID as keys, so XDP programs
>> need to extract these from forwarded packets.
>>=20
>> Signed-off-by: Yoshiki Komachi <komachi.yoshiki@gmail.com>
>> ---
>> include/uapi/linux/bpf.h       | 28 +++++++++++++++++++++
>> net/core/filter.c              | 45 =
++++++++++++++++++++++++++++++++++
>> scripts/bpf_helpers_doc.py     |  1 +
>> tools/include/uapi/linux/bpf.h | 28 +++++++++++++++++++++
>> 4 files changed, 102 insertions(+)
>>=20
>=20
> [...]
>=20
>> diff --git a/net/core/filter.c b/net/core/filter.c
>> index 654c346b7d91..68800d1b8cd5 100644
>> --- a/net/core/filter.c
>> +++ b/net/core/filter.c
>> @@ -45,6 +45,7 @@
>> #include <linux/filter.h>
>> #include <linux/ratelimit.h>
>> #include <linux/seccomp.h>
>> +#include <linux/if_bridge.h>
>> #include <linux/if_vlan.h>
>> #include <linux/bpf.h>
>> #include <linux/btf.h>
>> @@ -5084,6 +5085,46 @@ static const struct bpf_func_proto =
bpf_skb_fib_lookup_proto =3D {
>> 	.arg4_type	=3D ARG_ANYTHING,
>> };
>>=20
>> +#if IS_ENABLED(CONFIG_BRIDGE)
>> +BPF_CALL_4(bpf_xdp_fdb_lookup, struct xdp_buff *, ctx,
>> +	   struct bpf_fdb_lookup *, params, int, plen, u32, flags)
>> +{
>> +	struct net_device *src, *dst;
>> +	struct net *net;
>> +
>> +	if (plen < sizeof(*params))
>> +		return -EINVAL;
>> +
>> +	net =3D dev_net(ctx->rxq->dev);
>> +
>> +	if (is_multicast_ether_addr(params->addr) ||
>> +	    is_broadcast_ether_addr(params->addr))
>> +		return BPF_FDB_LKUP_RET_NOENT;
>=20
> small nit: you could move that validation before dev_net() call.

Thanks for your quick response.
I will try to fix it in the next version.

Best regards,

>> +
>> +	src =3D dev_get_by_index_rcu(net, params->ifindex);
>> +	if (unlikely(!src))
>> +		return -ENODEV;
>> +
>> +	dst =3D br_fdb_find_port_xdp(src, params->addr, =
params->vlan_id);
>> +	if (dst) {
>> +		params->ifindex =3D dst->ifindex;
>> +		return BPF_FDB_LKUP_RET_SUCCESS;
>> +	}
>> +
>> +	return BPF_FDB_LKUP_RET_NOENT;
>> +}

=E2=80=94
Yoshiki Komachi
komachi.yoshiki@gmail.com

