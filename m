Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3398604692
	for <lists.bridge@lfdr.de>; Wed, 19 Oct 2022 15:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2160040C7F;
	Wed, 19 Oct 2022 13:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2160040C7F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=x6CXrSxm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uZs5OxEME4mH; Wed, 19 Oct 2022 13:15:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EE89140C9D;
	Wed, 19 Oct 2022 13:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE89140C9D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0B3FC007C;
	Wed, 19 Oct 2022 13:15:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1E44C002D
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 621A240C96
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 621A240C96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XQLtthxry_I for <bridge@lists.linux-foundation.org>;
 Wed, 19 Oct 2022 13:15:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B362B40C7F
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B362B40C7F
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:15:20 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id 13so39773788ejn.3
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 06:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=akB4KpsqvQbKzruD6TooVR31GXWzLT+GK5PiB1pqO9A=;
 b=x6CXrSxmJac+3FENd8gLJUamvAD7D9evXXc5Ae4fIOord0iHp1cNjKKRmq2t0vMX0A
 xcbTJG6wKM53lzPkTcQ02Y/5YkU6zey7CB9dOMbm4gbpGE28XIjplHnYEsR5OinYaWGE
 LHfm1pSrCfq53MeuHvAfeEQsk/p7ELvBKlxsTrUVSGUZWV5NGg3t78ysGjCikWv4dY7M
 VQ99Xf+IWUKSsgsOm2cxvnQO4iaepEhUNchnRQW7zSl1ZVpAmYW43ZPMbJalrULzCaKF
 WZ7q/O1yBo4LhKawHtO4XMMordqWYfw34mW150MCweCaEnXt5Z6jGSLooBQfw8tLFxN4
 2Jbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=akB4KpsqvQbKzruD6TooVR31GXWzLT+GK5PiB1pqO9A=;
 b=DACrQ6iigz9NKvMKtgmVMX2xIpygk7HAfM7yDVqQB53RG9TJ2gczc/px5A5BddXwHQ
 Jv2LV31eukeR1VPSdkbGzohfbR6AP7T5Em2rQzEgRKMvAwtsQdkOeP53vHGfdjMsNYie
 T9uyWL+pKCtu3xs1p8KwTNxmgQ3toaa71niqYwYu7ExEaGk2PlrfmxDdIZGNfdKGNlEj
 PJii0U/AkyzvNoPFuK87qXgSj1xswgRVku2rO92aGv8Ob3R4Hmei4+vVlTFw+/tcuZ4+
 566vwT+56BUbEIURC/+CkNxjOxSgkVCV08wpRF5ycVkQENXOyp9zGRh8slcYZdUig6ut
 rbaw==
X-Gm-Message-State: ACrzQf2wpIo/kR7fEdreJ4fXqv0WpGgjdoTZuw2/kslLne8k5iuE4OM5
 Wj7cSjK7NuFpCFrXtd++YhAldw==
X-Google-Smtp-Source: AMsMyM7uPdxHJ7xUs0If/3jX8/kNo5cpJIlhcRw2NgYI82eu4+zGWnd7GiumOD2h4LxmA2QcRgH2OA==
X-Received: by 2002:a17:907:6d0d:b0:78d:f5a9:fe81 with SMTP id
 sa13-20020a1709076d0d00b0078df5a9fe81mr6703706ejc.628.1666185318389; 
 Wed, 19 Oct 2022 06:15:18 -0700 (PDT)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 17-20020a170906201100b007803083a36asm8831125ejo.115.2022.10.19.06.15.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Oct 2022 06:15:18 -0700 (PDT)
Message-ID: <74433b12-78a9-1d7a-d169-a5fcdb4a5850@blackwall.org>
Date: Wed, 19 Oct 2022 16:15:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221018120420.561846-1-idosch@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221018120420.561846-1-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 00/19] bridge: mcast: Extensions
	for EVPN
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

On 18/10/2022 15:04, Ido Schimmel wrote:
> Posting as RFC to show the whole picture. Will split into smaller
> submissions for v1 and add selftests.
> 
> tl;dr
> =====
> 
> This patchset creates feature parity between user space and the kernel
> and allows the former to install and replace MDB port group entries with
> a source list and associated filter mode. This is required for EVPN use
> cases where multicast state is not derived from snooped IGMP/MLD
> packets, but instead derived from EVPN routes exchanged by the control
> plane in user space.
> 
> Background
> ==========
> 
> IGMPv3 [1] and MLDv2 [2] differ from earlier versions of the protocols
> in that they add support for source-specific multicast. That is, hosts
> can advertise interest in listening to a particular multicast address
> only from specific source addresses or from all sources except for
> specific source addresses.
> 
> In kernel 5.10 [3][4], the bridge driver gained the ability to snoop
> IGMPv3/MLDv2 packets and install corresponding MDB port group entries.
> For example, a snooped IGMPv3 Membership Report that contains a single
> MODE_IS_EXCLUDE record for group 239.10.10.10 with sources 192.0.2.1,
> 192.0.2.2, 192.0.2.20 and 192.0.2.21 would trigger the creation of these
> entries:
> 
>  # bridge -d mdb show
>  dev br0 port veth1 grp 239.10.10.10 src 192.0.2.21 temp filter_mode include proto kernel  blocked
>  dev br0 port veth1 grp 239.10.10.10 src 192.0.2.20 temp filter_mode include proto kernel  blocked
>  dev br0 port veth1 grp 239.10.10.10 src 192.0.2.2 temp filter_mode include proto kernel  blocked
>  dev br0 port veth1 grp 239.10.10.10 src 192.0.2.1 temp filter_mode include proto kernel  blocked
>  dev br0 port veth1 grp 239.10.10.10 temp filter_mode exclude source_list 192.0.2.21/0.00,192.0.2.20/0.00,192.0.2.2/0.00,192.0.2.1/0.00 proto kernel
> 
> While the kernel can install and replace entries with a filter mode and
> source list, user space cannot. It can only add EXCLUDE entries with an
> empty source list, which is sufficient for IGMPv2/MLDv1, but not for
> IGMPv3/MLDv2.
> 
> Use cases where the multicast state is not derived from snooped packets,
> but instead derived from routes exchanged by the user space control
> plane require feature parity between user space and the kernel in terms
> of MDB configuration. Such a use case is detailed in the next section.
> 
> Motivation
> ==========
> 
> RFC 7432 [5] defines a "MAC/IP Advertisement route" (type 2) [6] that
> allows NVE switches in the EVPN network to advertise and learn
> reachability information for unicast MAC addresses. Traffic destined to
> a unicast MAC address can therefore be selectively forwarded to a single
> NVE switch behind which the MAC is located.
> 
> The same is not true for IP multicast traffic. Such traffic is simply
> flooded as BUM to all NVE switches in the broadcast domain (BD),
> regardless if a switch has interested receivers for the multicast stream
> or not. This is especially problematic for overlay networks that make
> heavy use of multicast.
> 
> The issue is addressed by RFC 9251 [7] that defines a "Selective
> Multicast Ethernet Tag Route" (type 6) [8] which allows NVE switches in
> the EVPN network to advertise multicast streams that they are interested
> in. This is done by having each switch suppress IGMP/MLD packets from
> being transmitted to the NVE network and instead communicate the
> information over BGP to other switches.
> 
> As far as the bridge driver is concerned, the above means that the
> multicast state (i.e., {multicast address, group timer, filter-mode,
> (source records)}) for the VXLAN bridge port is not populated by the
> kernel from snooped IGMP/MLD packets (they are suppressed), but instead
> by user space. Specifically, by the routing daemon that is exchanging
> EVPN routes with other NVE switches.
> 
> Changes are obviously also required in the VXLAN driver, but they are
> the subject of future patchsets. See the "Future work" section.
> 
> Implementation
> ==============
> 
> The user interface is extended to allow user space to specify the filter
> mode of the MDB port group entry and its source list. Replace support is
> also added so that user space would not need to remove an entry and
> re-add it only to edit its source list or filter mode, as that would
> result in packet loss. Example usage:
> 
>  # bridge mdb replace dev br0 port dummy10 grp 239.1.1.1 permanent \
> 	source_list 192.0.2.1,192.0.2.3 filter_mode exclude proto zebra
>  # bridge -d -s mdb show
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.3 permanent filter_mode include proto zebra  blocked    0.00
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.1 permanent filter_mode include proto zebra  blocked    0.00
>  dev br0 port dummy10 grp 239.1.1.1 permanent filter_mode exclude source_list 192.0.2.3/0.00,192.0.2.1/0.00 proto zebra     0.00
> 
> The netlink interface is extended with a few new attributes in the
> RTM_NEWMDB request message:
> 
> [ struct nlmsghdr ]
> [ struct br_port_msg ]
> [ MDBA_SET_ENTRY ]
> 	struct br_mdb_entry
> [ MDBA_SET_ENTRY_ATTRS ]
> 	[ MDBE_ATTR_SOURCE ]
> 		struct in_addr / struct in6_addr
> 	[ MDBE_ATTR_SRC_LIST ]		// new
> 		[ MDBE_SRC_LIST_ENTRY ]
> 			[ MDBE_SRCATTR_ADDRESS ]
> 				struct in_addr / struct in6_addr
> 		[ ...]
> 	[ MDBE_ATTR_GROUP_MODE ]	// new
> 		u8
> 	[ MDBE_ATTR_RTPORT ]		// new
> 		u8
> 
> No changes are required in RTM_NEWMDB responses and notifications, as
> all the information can already be dumped by the kernel today.
> 
> Testing
> =======
> 
> Tested with existing bridge multicast selftests: bridge_igmp.sh,
> bridge_mdb_port_down.sh, bridge_mdb.sh, bridge_mld.sh,
> bridge_vlan_mcast.sh.
> 
> Will add dedicated selftests in v1.
> 
> Patchset overview
> =================
> 
> Patches #1-#8 are non-functional preparations aimed at making it easier
> to add additional netlink attributes later on. They create an MDB
> configuration structure into which netlink messages are parsed into.
> The structure is then passed in the entry creation / deletion call chain
> instead of passing the netlink attributes themselves. The same pattern
> is used by other rtnetlink objects such as routes and nexthops.
> 
> I initially tried to extend the current code, but it proved to be too
> difficult, which is why I decided to refactor it to the extensible and
> familiar pattern used by other rtnetlink objects.
> 
> The plan is to submit these patches separately for v1.
> 
> Patches #9-#15 are an additional set of non-functional preparations for
> the core changes in the last patches.
> 
> Patches #16-#17 allow user space to install (*, G) entries with a source
> list and associated filter mode. Specifically, patch #16 adds the
> necessary kernel plumbing and patch #17 exposes the new functionality to
> user space via a few new attributes.
> 
> Patch #18 allows user space to specify the routing protocol of new MDB
> port group entries so that a routing daemon could differentiate between
> entries installed by it and those installed by an administrator.
> 
> Patch #19 allows user space to replace MDB port group entries. This is
> useful, for example, when user space wants to add a new source to a
> source list. Instead of deleting a (*, G) entry and re-adding it with an
> extended source list (which would result in packet loss), user space can
> simply replace the current entry.
> 
> Future work
> ===========
> 
> The VXLAN driver will need to be extended with an MDB so that it could
> selectively forward IP multicast traffic to NVE switches with interested
> receivers instead of simply flooding it to all switches as BUM.
> 
> The idea is to reuse the existing MDB interface for the VXLAN driver in
> a similar way to how the FDB interface is shared between the bridge and
> VXLAN drivers.
> 
> From command line perspective, configuration will look as follows:
> 
>  # bridge mdb add dev br0 port vxlan0 grp 239.1.1.1 permanent \
> 	filter_mode exclude source_list 198.50.100.1,198.50.100.2
> 
>  # bridge mdb add dev vxlan0 port vxlan0 grp 239.1.1.1 permanent \
> 	filter_mode include source_list 198.50.100.3,198.50.100.4 \
> 	dst 192.0.2.1 dst_port 4789 src_vni 2
> 
>  # bridge mdb add dev vxlan0 port vxlan0 grp 239.1.1.1 permanent \
> 	filter_mode exclude source_list 198.50.100.1,198.50.100.2 \
> 	dst 192.0.2.2 dst_port 4789 src_vni 2
> 
> Where the first command is enabled by this set, but the next two will be
> the subject of future work.
> 
> From netlink perspective, the existing PF_BRIDGE/RTM_*MDB messages will
> be extended to the VXLAN driver. This means that a few new attributes
> will be added (e.g., 'MDBE_ATTR_SRC_VNI') and that the handlers for
> these messages will need to move to net/core/rtnetlink.c. The rtnetlink
> code will call into the appropriate driver based on the ifindex
> specified in the ancillary header.
> 
> iproute2 patches can be found here [9].
> 
> [1] https://datatracker.ietf.org/doc/html/rfc3376
> [2] https://www.rfc-editor.org/rfc/rfc3810
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6af52ae2ed14a6bc756d5606b29097dfd76740b8
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=68d4fd30c83b1b208e08c954cd45e6474b148c87
> [5] https://datatracker.ietf.org/doc/html/rfc7432
> [6] https://datatracker.ietf.org/doc/html/rfc7432#section-7.2
> [7] https://datatracker.ietf.org/doc/html/rfc9251
> [8] https://datatracker.ietf.org/doc/html/rfc9251#section-9.1
> [9] https://github.com/idosch/iproute2/commits/submit/mdb_rfc_v1
> 
> Ido Schimmel (19):
>   bridge: mcast: Centralize netlink attribute parsing
>   bridge: mcast: Remove redundant checks
>   bridge: mcast: Use MDB configuration structure where possible
>   bridge: mcast: Propagate MDB configuration structure further
>   bridge: mcast: Use MDB group key from configuration structure
>   bridge: mcast: Remove br_mdb_parse()
>   bridge: mcast: Move checks out of critical section
>   bridge: mcast: Remove redundant function arguments
>   bridge: mcast: Do not derive entry type from its filter mode
>   bridge: mcast: Split (*, G) and (S, G) addition into different
>     functions
>   bridge: mcast: Place netlink policy before validation functions
>   bridge: mcast: Add a centralized error path
>   bridge: mcast: Expose br_multicast_new_group_src()
>   bridge: mcast: Add a flag for user installed source entries
>   bridge: mcast: Avoid arming group timer when (S, G) corresponds to a
>     source
>   bridge: mcast: Add support for (*, G) with a source list and filter
>     mode
>   bridge: mcast: Allow user space to add (*, G) with a source list and
>     filter mode
>   bridge: mcast: Allow user space to specify MDB entry routing protocol
>   bridge: mcast: Support replacement of MDB port group entries
> 
>  include/uapi/linux/if_bridge.h |  21 +
>  net/bridge/br_mdb.c            | 821 ++++++++++++++++++++++++---------
>  net/bridge/br_multicast.c      |   5 +-
>  net/bridge/br_private.h        |  21 +
>  4 files changed, 649 insertions(+), 219 deletions(-)
> 

Good work, the set looks good to me. It's a natural extension to allow user-space to
manipulate such mcast groups. As we discussed privately it's only missing the selftests. :)

Cheers,
 Nik

