Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9794DCDCB
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 19:42:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4034403E9;
	Thu, 17 Mar 2022 18:42:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cczZKx-Lz_oD; Thu, 17 Mar 2022 18:42:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9403E402A8;
	Thu, 17 Mar 2022 18:42:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4EA00C0082;
	Thu, 17 Mar 2022 18:42:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7BD30C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 18:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A61B60AEC
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 18:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9rGFv6TMnYo for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 18:42:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4EAB460AAB
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 18:42:09 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id u23so3012611ejt.1
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 11:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oXxajodOegFpu3qLtW7meKAMsmhaC7A4cIBe9jeyyy8=;
 b=T1CXfgoLZaxde5dXFF4LTNE2qLUFot42LriRrOoKQgCswwyNCHb6anbnIZ/6Gvsqb4
 vmwMIhiVo7o5dlgWLclkHWo/VuqWp19QoWTUmVOdLyIxFs2qubQmR/wJrqOAKwyizCL+
 GGzDyV6Y04zs11XcJL8FLm0IQ9NUA3LGAErmZxba7krGizP2TtvcI4V+tiiAnL/g+7W0
 d+8z/Secp8G0iFoukRBbcCkDVfxNZCfccCC9S8ASJzhefj5KjNmOHKTUnNxGoP4ngWZF
 r3cuM+OGw1wWW+5g6LlM+EWzfDWy9Hebr25O9RlbPEtwvSJuDR9VyCV6u6zY+YSfZRsA
 Nm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oXxajodOegFpu3qLtW7meKAMsmhaC7A4cIBe9jeyyy8=;
 b=caCDJEYtT0+EDYnOtCRNQWdttCTeFMnANF1wr+LCtlt8pQmUuhbEPBVh70DIKdbq+l
 NlHqQdoH8V7pIHnhCeBzKkwqW4EI63m52RELCFZc3WrED1pTnEfwnzaatgxt9meLUqhN
 sA6fa46AkhO2V0uY1NiBidVMEICmekvd1IylnZ6Goa6kX56BnYxxe8R1JUPw5xPXFEog
 gh3nRC/WmpyxQIsUVuQIG2D+3QOwkjT89FQYCH8w4udXzrXn05UHrQjkSujnMOWCaExf
 h6p06xOxJTS+mx7P6PKKOKmFF7xXhc47DSUQTnPcNZRf0AVmz1hxQ+mYzBighZ2S42jw
 potg==
X-Gm-Message-State: AOAM530oN38jidwOJ9DpdhHdCWDxYoBJY2aS91Xg39o7sjI7xxcxOqH/
 nWGFYQZxA74naWlmOftLnqj5gGXE+js=
X-Google-Smtp-Source: ABdhPJyI7FbCW2YhqjttBaWbUwZA3WvvirdR9td3755YlbQ0QHnT8pu0jP7DlVdmg4nQ31ePLujjcg==
X-Received: by 2002:a17:906:d54f:b0:6df:a9d8:cbaa with SMTP id
 cr15-20020a170906d54f00b006dfa9d8cbaamr1943701ejc.183.1647542526979; 
 Thu, 17 Mar 2022 11:42:06 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 w14-20020a170906d20e00b006cee22553f7sm2780238ejz.213.2022.03.17.11.42.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 11:42:06 -0700 (PDT)
Date: Thu, 17 Mar 2022 20:42:04 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220317184204.wehqmziioscdz33t@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <f9b3ecf5-c2a4-3a7a-5d19-1dbeae5acb69@gmail.com>
 <86o825htih.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86o825htih.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/3] Extend locked port feature with
 FDB locked flag (MAC-Auth/MAB)
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

On Thu, Mar 17, 2022 at 09:29:10AM +0100, Hans Schultz wrote:
> On ons, mar 16, 2022 at 17:18, Florian Fainelli <f.fainelli@gmail.com> wrote:
> > On 3/10/2022 6:23 AM, Hans Schultz wrote:
> >> This patch set extends the locked port feature for devices
> >> that are behind a locked port, but do not have the ability to
> >> authorize themselves as a supplicant using IEEE 802.1X.
> >> Such devices can be printers, meters or anything related to
> >> fixed installations. Instead of 802.1X authorization, devices
> >> can get access based on their MAC addresses being whitelisted.
> >> 
> >> For an authorization daemon to detect that a device is trying
> >> to get access through a locked port, the bridge will add the
> >> MAC address of the device to the FDB with a locked flag to it.
> >> Thus the authorization daemon can catch the FDB add event and
> >> check if the MAC address is in the whitelist and if so replace
> >> the FDB entry without the locked flag enabled, and thus open
> >> the port for the device.
> >> 
> >> This feature is known as MAC-Auth or MAC Authentication Bypass
> >> (MAB) in Cisco terminology, where the full MAB concept involves
> >> additional Cisco infrastructure for authorization. There is no
> >> real authentication process, as the MAC address of the device
> >> is the only input the authorization daemon, in the general
> >> case, has to base the decision if to unlock the port or not.
> >> 
> >> With this patch set, an implementation of the offloaded case is
> >> supplied for the mv88e6xxx driver. When a packet ingresses on
> >> a locked port, an ATU miss violation event will occur. When
> >> handling such ATU miss violation interrupts, the MAC address of
> >> the device is added to the FDB with a zero destination port
> >> vector (DPV) and the MAC address is communicated through the
> >> switchdev layer to the bridge, so that a FDB entry with the
> >> locked flag enabled can be added.
> >
> > FWIW, we may have about a 30% - 70% split between switches that will 
> > signal ATU violations over a side band interrupt, like mv88e6xxx will, 
> > and the rest will likely signal such events via the proprietary tag
> > format.
> 
> I guess that the proprietary tag scheme a scenario where the packet can
> be forwarded to the bridge module's ingress queue on the respective
> port?

I'm not sure what you mean by forwarding to the bridge module's ingress
queue. I expect that both cases of drivers to interact with the bridge
in the exact same way, expect one of them calls call_switchdev_notifiers()
from an interrupt context, and the other from NET_RX softirq context,
from the tagging protocol driver (ok, maybe not directly, it depends
upon whether we need rtnl_lock which sleeps, things like that).

I might be just projecting based on what I know, but the way I interpret
what Florian has said is by thinking of "learn frames" as described here:
https://patchwork.kernel.org/project/netdevbpf/cover/20220209130538.533699-1-schultz.hans+netdev@gmail.com/#24734685
The advantage of signaling ATU misses or membership violations via learn
frames is that you have a much wider toolbox of mitigations for denial
of service. Instead of one ATU interrupt per packet, you have NAPI on
the DSA master, interrupt coalescing, policers on the DSA master, rate
limiting for learn frames in the switch...
