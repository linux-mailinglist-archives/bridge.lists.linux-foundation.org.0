Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4E6757FEB
	for <lists.bridge@lfdr.de>; Tue, 18 Jul 2023 16:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0975641181;
	Tue, 18 Jul 2023 14:44:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0975641181
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=O9RGJcwo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFcWEQ-GjOw6; Tue, 18 Jul 2023 14:44:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1CB9941174;
	Tue, 18 Jul 2023 14:44:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CB9941174
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ABDE9C0DD4;
	Tue, 18 Jul 2023 14:43:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 96658C0032
 for <bridge@lists.linux-foundation.org>; Tue, 18 Jul 2023 14:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FBCB400B4
 for <bridge@lists.linux-foundation.org>; Tue, 18 Jul 2023 14:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FBCB400B4
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=O9RGJcwo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FmIXePhMfT7S for <bridge@lists.linux-foundation.org>;
 Tue, 18 Jul 2023 14:43:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E27CC40096
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E27CC40096
 for <bridge@lists.linux-foundation.org>; Tue, 18 Jul 2023 14:43:55 +0000 (UTC)
Received: by mail-io1-xd31.google.com with SMTP id
 ca18e2360f4ac-783544a1c90so338020739f.1
 for <bridge@lists.linux-foundation.org>; Tue, 18 Jul 2023 07:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689691435; x=1692283435;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WkA8iv3CYThQxjd8x8fTK5A99pwizqwWrMrleQNWwvI=;
 b=O9RGJcwoKltM4nGF/7Epc1Zm0V4Ob8dijXngW6dyVqoOYqo0qIkf/fMAyz3yJZAG5I
 RxyeV3CB/gi+HXeJ/OaUbJU2ftUYoGiq3qfzLTCG2+LpsZxc7IUWS9wx9uv48ANOytXX
 QL/lpL5LPQ7vGXFCF1EJ/9iIt8dizpOPwJTH/BODl9PJ5iYhv1aoh++QPbepTCeAyiyb
 BzjidVFBbNfJWpDW64U3LRux9eJrukpu34bmIeNWl+Ha7tTPE0W9f6akOqPq+xdf7wWm
 5pdHQp7tUJP9UsT9IX2WHn1Xjuu53LiSTNE2vDZo7/P7wyp8qsBLvHbAvhlMbdndsM3r
 Q05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689691435; x=1692283435;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WkA8iv3CYThQxjd8x8fTK5A99pwizqwWrMrleQNWwvI=;
 b=YWIrC4b/zt+Dq0sfBfbwl/91aqVBTkfHP48YdprhyGbXLIyOPLJA3uVl2mKKPacKN2
 +f6yfenIkZ9AV0Z21Nw+Oo+TwPo8jgojp1KEw033Pn5yDObl1DDHM4CpxcKohOzvgXtz
 FFV668R74TBgu5vXTCP/Dj+dV1QyLyJGmTPE6uVimpXIPBcyOLgOuMxZ7G2doaIJ0utM
 a5FakcFwvwyby6X1he4TSSJRpe1uZDpHyw55CX7SJxIde2oNlK49l9xcwqwHjNDFDtg6
 gHnP9Rd6mCntmU/qDAkzC7eBqDgjTjU6VRh8mqd+td3Z8M433TendZXF0Njumhi33B58
 652g==
X-Gm-Message-State: ABy/qLbZmp7b1rjSUeKr++2RjZ1Vs+NObNisVj63O4ic7ydq2gNaFTGn
 eFjYKUIvh4fd0r5XcjX+8xI=
X-Google-Smtp-Source: APBJJlG06weYCcLzUAdvgeIirmKv/qZp9GFLIj21hwOgxWrWDGsancEy+B8JgufHP6W/wd3Hu/mhHw==
X-Received: by 2002:a5e:a80a:0:b0:783:6eef:1496 with SMTP id
 c10-20020a5ea80a000000b007836eef1496mr3138284ioa.19.1689691434652; 
 Tue, 18 Jul 2023 07:43:54 -0700 (PDT)
Received: from ?IPV6:2601:282:800:7ed0:bd1d:fe8d:d220:8378?
 ([2601:282:800:7ed0:bd1d:fe8d:d220:8378])
 by smtp.googlemail.com with ESMTPSA id
 d19-20020a056602185300b007836a9ca101sm658710ioi.22.2023.07.18.07.43.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Jul 2023 07:43:54 -0700 (PDT)
Message-ID: <085e4f7c-8725-b0e8-e1ec-1b948c2df987@gmail.com>
Date: Tue, 18 Jul 2023 08:43:53 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.13.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230717081229.81917-1-idosch@nvidia.com>
From: David Ahern <dsahern@gmail.com>
In-Reply-To: <20230717081229.81917-1-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, taspelund@nvidia.com, razor@blackwall.org,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/4] Add backup nexthop ID support
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

On 7/17/23 2:12 AM, Ido Schimmel wrote:
> tl;dr
> =====
> 
> This patchset adds a new bridge port attribute specifying the nexthop
> object ID to attach to a redirected skb as tunnel metadata. The ID is
> used by the VXLAN driver to choose the target VTEP for the skb. This is
> useful for EVPN multi-homing, where we want to redirect local
> (intra-rack) traffic upon carrier loss through one of the other VTEPs
> (ES peers) connected to the target host.
> 
> Background
> ==========
> 
> In a typical EVPN multi-homing setup each host is multi-homed using a
> set of links called ES (Ethernet Segment, i.e., LAG) to multiple leaf
> switches in a rack. These switches act as VTEPs and are not directly
> connected (as opposed to MLAG), but can communicate with each other (as
> well as with VTEPs in remote racks) via spine switches over L3.
> 
> The control plane uses Type 1 routes [1] to create a mapping between an
> ES and VTEPs where the ES has active links. In addition, the control
> plane uses Type 2 routes [2] to create a mapping between {MAC, VLAN} and
> an ES.
> 
> These tables are then used by the control plane to instruct VTEPs how to
> reach remote hosts. For example, assuming {MAC X, VLAN Y} is accessible
> via ES1 and this ES has active links to VTEP1 and VTEP2. The control
> plane will program the following entries to a remote VTEP:
> 
>  # ip nexthop add id 1 via $VTEP1_IP fdb
>  # ip nexthop add id 2 via $VTEP2_IP fdb
>  # ip nexthop add id 10 group 1/2 fdb
>  # bridge fdb add $MAC_X dev vx0 master extern_learn vlan $VLAN_Y
>  # bridge fdb add $MAC_Y dev vx0 self extern_learn nhid 10 src_vni $VNI_Y
> 
> Remote traffic towards the host will be load balanced between VTEP1 and
> VTEP2. If the control plane notices a carrier loss on the ES1 link
> connected to VTEP1, it will issue a Type 1 route withdraw, prompting
> remote VTEPs to remove the effected nexthop from the group:
> 
>  # ip nexthop replace id 10 group 2 fdb
> 
> Motivation
> ==========
> 
> While remote traffic can be redirected to a VTEP with an active ES link
> by withdrawing a Type 1 route, the same is not true for local traffic. A
> host that is multi-homed to VTEP1 and VTEP2 via another ES (e.g., ES2)
> will send its traffic to {MAC X, VLAN Y} via one of these two switches,
> according to its LAG hash algorithm which is not under our control. If
> the traffic arrives at VTEP1 - which no longer has an active ES1 link -
> it will be dropped due to the carrier loss.
> 
> In MLAG setups, the above problem is solved by redirecting the traffic
> through the peer link upon carrier loss. This is achieved by defining
> the peer link as the backup port of the host facing bond. For example:
> 
>  # bridge link set dev bond0 backup_port bond_peer
> 
> Unlike MLAG, there is no peer link between the leaf switches in EVPN.
> Instead, upon carrier loss, local traffic should be redirected through
> one of the active ES peers. This can be achieved by defining the VXLAN
> port as the backup port of the host facing bonds. For example:
> 
>  # bridge link set dev es1_bond backup_port vx0
> 
> However, the VXLAN driver is not programmed with FDB entries for locally
> attached hosts and therefore does not know to which VTEP to redirect the
> traffic to. This will result in the traffic being replicated to all the
> VTEPs (potentially hundreds) in the network and each VTEP dropping the
> traffic, except for the active ES peer.
> 
> Avoiding the flooding by programming local FDB entries in the VXLAN
> driver is not a viable solution as it requires to significantly increase
> the number of programmed FDB entries.
> 
> Implementation
> ==============
> 
> The proposed solution is to create an FDB nexthop group for each ES with
> the IP addresses of the active ES peers and set this ID as the backup
> nexthop ID (new bridge port attribute) of the ES link. For example, on
> VTEP1:
> 
>  # ip nexthop add id 1 via $VTEP2_IP fdb
>  # ip nexthop add id 10 group 1 fdb
>  # bridge link set dev es1_bond backup_nhid 10
>  # bridge link set dev es1_bond backup_port vx0
> 
> When the ES link loses its carrier, traffic will be redirected to the
> VXLAN port, but instead of only attaching the tunnel ID (i.e., VNI) as
> tunnel metadata to the skb, the backup nexthop ID will be attached as
> well. The VXLAN driver will then use this information to forward the skb
> via the nexthop object associated with the ID, as if the skb hit an FDB
> entry associated with this ID.
> 
> Testing
> =======
> 
> A test for both the existing backup port attribute as well as the new
> backup nexthop ID attribute is added in patch #4.
> 
> Patchset overview
> =================
> 
> Patch #1 extends the tunnel key structure with the new nexthop ID field.
> 
> Patch #2 uses the new field in the VXLAN driver to forward packets via
> the specified nexthop ID.
> 
> Patch #3 adds the new backup nexthop ID bridge port attribute and
> adjusts the bridge driver to attach the ID as tunnel metadata upon
> redirection.
> 
> Patch #4 adds a selftest.
> 
> iproute2 patches can be found here [3].
> 
> Changelog
> =========
> 
> Since RFC [4]:
> 
> * Added Nik's tags.
> 
> [1] https://datatracker.ietf.org/doc/html/rfc7432#section-7.1
> [2] https://datatracker.ietf.org/doc/html/rfc7432#section-7.2
> [3] https://github.com/idosch/iproute2/tree/submit/backup_nhid_v1
> [4] https://lore.kernel.org/netdev/20230713070925.3955850-1-idosch@nvidia.com/
> 
> Ido Schimmel (4):
>   ip_tunnels: Add nexthop ID field to ip_tunnel_key
>   vxlan: Add support for nexthop ID metadata
>   bridge: Add backup nexthop ID support
>   selftests: net: Add bridge backup port and backup nexthop ID test
> 
>  drivers/net/vxlan/vxlan_core.c                |  44 +
>  include/net/ip_tunnels.h                      |   1 +
>  include/uapi/linux/if_link.h                  |   1 +
>  net/bridge/br_forward.c                       |   1 +
>  net/bridge/br_netlink.c                       |  12 +
>  net/bridge/br_private.h                       |   3 +
>  net/bridge/br_vlan_tunnel.c                   |  15 +
>  net/core/rtnetlink.c                          |   2 +-
>  tools/testing/selftests/net/Makefile          |   1 +
>  .../selftests/net/test_bridge_backup_port.sh  | 759 ++++++++++++++++++
>  10 files changed, 838 insertions(+), 1 deletion(-)
>  create mode 100755 tools/testing/selftests/net/test_bridge_backup_port.sh
> 

For the series:
Acked-by: David Ahern <dsahern@kernel.org>

