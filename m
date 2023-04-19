Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAF56E79C6
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 14:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9109683B03;
	Wed, 19 Apr 2023 12:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9109683B03
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=3yjuxArV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQaz96ChbIKa; Wed, 19 Apr 2023 12:30:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C6B8C82255;
	Wed, 19 Apr 2023 12:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6B8C82255
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 65E74C008C;
	Wed, 19 Apr 2023 12:30:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7FEB5C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 12:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6233B41EED
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 12:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6233B41EED
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=3yjuxArV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RZt021A7yJLo for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 12:30:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F34A841DDB
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F34A841DDB
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 12:30:12 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id fy21so38234863ejb.9
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 05:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1681907411; x=1684499411;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=avqNslnB4KohY2YwvfuPOO2n1lMtgBQmzRxlc74gZbM=;
 b=3yjuxArVmI5nyCoyJTDePB0cVEtEM++DI8nVuePKhdy1/WOQha+f+sFpnpHAgeA/cl
 alU672tyBuIVWDO7VkC++qB4zQcNYvwDdotIHoPO7I7zJe4+VWrS1n5etxbjS9DjqEc/
 q98DFJK2bD2GW+Rk8Kulf8uEU+prtBEnYhfcDe+zQ96RdhixRRwqbirj2rgpbAQ5tYsm
 OIJGGtKi8pdD20iqJ1oP9Xw9GTsikAY1BOC79SCxoisBGGP4iVzrP9Kav7tX+4KcinfA
 f70joN+3jGmdFemC3Ev2ZGfi1N5NjKUbQok6YGCIdiHMV5uxcf0WoV8BdMXib8uwBKKg
 +Hgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681907411; x=1684499411;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=avqNslnB4KohY2YwvfuPOO2n1lMtgBQmzRxlc74gZbM=;
 b=OwU4jp4CV00+kiPftfpxptzYxKuroGUEr8RS8l7t7bOqvJRWdfsGivcSidCCI6Lg31
 Kj7cZ1uhOl5P6LrTKAQv1ST0Sg2GebPv2uMPmS9BM96y9LlFyZbleHqwUIziAG4x10ye
 D4bCsZ5duIZVhqCQzSKKJrLXlPuKtmOqQt4Bn07InWyr9kb+7dhelMidnB6sf1pJ0yWS
 0wM27HLazq9/Lh01dNj2LIiGDfIdu/0U4Mftd89KSRp2pUCTZ5fG3G1EOE3FsmHV34Q/
 72rzQXQii764qyWOOrbDMo/jle8iYjZT0w48aVDvZCZVDDYoP1zPlR8bdy6YnHWizV0Y
 ZB6Q==
X-Gm-Message-State: AAQBX9caIKwb1SIp26JY8o/nHUx6ZDI6GP77J40Q5+U8P5n0frcb9j6X
 yAb53Bbemedr3vyDjOfq7bTiFA==
X-Google-Smtp-Source: AKy350bZNbwe0z00tAsXhj8W1ZPY/I+8QRfEW5wXUnH2LbVAQiU8ZADoB+3/Jhpx7yvVyN4hjlw9Lg==
X-Received: by 2002:a17:906:b197:b0:94f:788:6bc with SMTP id
 w23-20020a170906b19700b0094f078806bcmr14249974ejy.37.1681907410733; 
 Wed, 19 Apr 2023 05:30:10 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 x2-20020a1709064a8200b0094f49f58019sm5200046eju.27.2023.04.19.05.30.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Apr 2023 05:30:09 -0700 (PDT)
Message-ID: <95a773f6-5f88-712e-c494-9414d7090144@blackwall.org>
Date: Wed, 19 Apr 2023 15:30:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230413095830.2182382-1-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230413095830.2182382-1-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 0/9] bridge: Add per-{Port,
 VLAN} neighbor suppression
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

On 13/04/2023 12:58, Ido Schimmel wrote:
> Background
> ==========
> 
> In order to minimize the flooding of ARP and ND messages in the VXLAN
> network, EVPN includes provisions [1] that allow participating VTEPs to
> suppress such messages in case they know the MAC-IP binding and can
> reply on behalf of the remote host. In Linux, the above is implemented
> in the bridge driver using a per-port option called "neigh_suppress"
> that was added in kernel version 4.15 [2].
> 
> Motivation
> ==========
> 
> Some applications use ARP messages as keepalives between the application
> nodes in the network. This works perfectly well when two nodes are
> connected to the same VTEP. When a node goes down it will stop
> responding to ARP requests and the other node will notice it
> immediately.
> 
> However, when the two nodes are connected to different VTEPs and
> neighbor suppression is enabled, the local VTEP will reply to ARP
> requests even after the remote node went down, until certain timers
> expire and the EVPN control plane decides to withdraw the MAC/IP
> Advertisement route for the address. Therefore, some users would like to
> be able to disable neighbor suppression on VLANs where such applications
> reside and keep it enabled on the rest.
> 
> Implementation
> ==============
> 
> The proposed solution is to allow user space to control neighbor
> suppression on a per-{Port, VLAN} basis, in a similar fashion to other
> per-port options that gained per-{Port, VLAN} counterparts such as
> "mcast_router". This allows users to benefit from the operational
> simplicity and scalability associated with shared VXLAN devices (i.e.,
> external / collect-metadata mode), while still allowing for per-VLAN/VNI
> neighbor suppression control.
> 
> The user interface is extended with a new "neigh_vlan_suppress" bridge
> port option that allows user space to enable per-{Port, VLAN} neighbor
> suppression on the bridge port. When enabled, the existing
> "neigh_suppress" option has no effect and neighbor suppression is
> controlled using a new "neigh_suppress" VLAN option. Example usage:
> 
>  # bridge link set dev vxlan0 neigh_vlan_suppress on
>  # bridge vlan add vid 10 dev vxlan0
>  # bridge vlan set vid 10 dev vxlan0 neigh_suppress on
> 
> Testing
> =======
> 
> Tested using existing bridge selftests. Added a dedicated selftest in
> the last patch.
> 
> Patchset overview
> =================
> 
> Patches #1-#5 are preparations.
> 
> Patch #6 adds per-{Port, VLAN} neighbor suppression support to the
> bridge's data path.
> 
> Patches #7-#8 add the required netlink attributes to enable the feature.
> 
> Patch #9 adds a selftest.
> 
> iproute2 patches can be found here [3].
> 
> [1] https://www.rfc-editor.org/rfc/rfc7432#section-10
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a42317785c898c0ed46db45a33b0cc71b671bf29
> [3] https://github.com/idosch/iproute2/tree/submit/neigh_suppress_v1
> 
> Ido Schimmel (9):
>   bridge: Reorder neighbor suppression check when flooding
>   bridge: Pass VLAN ID to br_flood()
>   bridge: Add internal flags for per-{Port, VLAN} neighbor suppression
>   bridge: Take per-{Port, VLAN} neighbor suppression into account
>   bridge: Encapsulate data path neighbor suppression logic
>   bridge: Add per-{Port, VLAN} neighbor suppression data path support
>   bridge: vlan: Allow setting VLAN neighbor suppression state
>   bridge: Allow setting per-{Port, VLAN} neighbor suppression state
>   selftests: net: Add bridge neighbor suppression test
> 
>  include/linux/if_bridge.h                     |   1 +
>  include/uapi/linux/if_bridge.h                |   1 +
>  include/uapi/linux/if_link.h                  |   1 +
>  net/bridge/br_arp_nd_proxy.c                  |  33 +-
>  net/bridge/br_device.c                        |   8 +-
>  net/bridge/br_forward.c                       |   8 +-
>  net/bridge/br_if.c                            |   2 +-
>  net/bridge/br_input.c                         |   2 +-
>  net/bridge/br_netlink.c                       |   8 +-
>  net/bridge/br_private.h                       |   5 +-
>  net/bridge/br_vlan.c                          |   1 +
>  net/bridge/br_vlan_options.c                  |  20 +-
>  net/core/rtnetlink.c                          |   2 +-
>  tools/testing/selftests/net/Makefile          |   1 +
>  .../net/test_bridge_neigh_suppress.sh         | 862 ++++++++++++++++++
>  15 files changed, 936 insertions(+), 19 deletions(-)
>  create mode 100755 tools/testing/selftests/net/test_bridge_neigh_suppress.sh
> 

The set looks good to me, nicely split and pretty straight-forward.
For the set:
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


