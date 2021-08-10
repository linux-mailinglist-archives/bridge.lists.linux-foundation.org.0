Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5D83E5881
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 12:43:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8EB96087F;
	Tue, 10 Aug 2021 10:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZi7XtR2Hcfm; Tue, 10 Aug 2021 10:42:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6A1C560645;
	Tue, 10 Aug 2021 10:42:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2B261C001F;
	Tue, 10 Aug 2021 10:42:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AA930C000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 10:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 998656087E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 10:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Gk0nTI2CjSP for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 10:42:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4554F60645
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 10:42:55 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id n12so5661478edx.8
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 03:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xiKDF5sk3nZVqiLvWljYWOnuO6utGOgyNbzwJDUY3Jc=;
 b=k/0dmRwzyl/h1/DIT/ZBTd7wOco3RdeLLqDPVQSvUXSni1cROiQM3WwzrTGiFPP69O
 vQU6yzVDX5UKBxs/7wvKmcV2fRN0/sjUWKIydN5/Hn24evQZsjaVUqr6Fr1ttcIMkWnj
 0TFQhT4wTuTbfcObgjt4v6Ins18QtMCZ1D/SgShVJluRXz196B9L43VuiHCyi08nl9Ab
 EmRjwxFl0vQFaQIPjRBMrpcpG2lv9QcwiFReDfetE+1jQlf3+krIG1bj/xWDeG9lzuTA
 Xm9NcAWUSU9h/8mVBoBQCmX/cHrXv1GbNJUFffbAuG0NyaDtf1egzKsvy/M8Qvz7wcit
 Ko6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xiKDF5sk3nZVqiLvWljYWOnuO6utGOgyNbzwJDUY3Jc=;
 b=YkIRa/QBSWxLW1GwxTDPPgBT49YKiHt/Xhu1Tyu6PBKNkk3lkeKcuo4xpf8kAG1jTR
 ozblcp++7OVv7mdWIJyGp7eUZnuM69JfSfvedNP3u2yaWdAza/So+bnAZqO18gh/bT52
 j6AUZ+qtX8Bro0JkSdhaq7I+qZlWVo2D4Jf52MXs+hqXbLjBgMLQBeB53W82GNDWq7Db
 Ds4FiervUiU+K3pXTpfnO6XuYlw7ZeiWWO4pjBWsK8c9EWWFJRD8Bi0GQb1njaXCGpcX
 z/POrC1dTS2xiXmC/9qQAqP1Cv4Yy4xdkQgKngK0VkT8CvD6Qiew3O92wEUGAkGk6S6o
 jpLQ==
X-Gm-Message-State: AOAM532ojvJM6kh5gIL4wSrAbsx2yCcUK4tL8UK7WRfry8olvQHYgy5H
 z3mKpzuyNO+9fOOrw10L5mw=
X-Google-Smtp-Source: ABdhPJxRuTaO/745ELNpRppuiqMzNYiUkrwiHvoYei1nFybKYEMMVj6ft79tVSk05jWdgieVLgXF/Q==
X-Received: by 2002:aa7:db13:: with SMTP id t19mr4166345eds.72.1628592173526; 
 Tue, 10 Aug 2021 03:42:53 -0700 (PDT)
Received: from skbuf ([188.25.144.60])
 by smtp.gmail.com with ESMTPSA id v20sm6682115ejq.17.2021.08.10.03.42.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 03:42:53 -0700 (PDT)
Date: Tue, 10 Aug 2021 13:42:51 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: DENG Qingfang <dqfext@gmail.com>
Message-ID: <20210810104251.k7w76aqlvsvb3jcy@skbuf>
References: <CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Subject: Re: [Bridge] Bridge port isolation offload
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

On Tue, Aug 10, 2021 at 12:40:49PM +0800, DENG Qingfang wrote:
> Hi,
> 
> Bridge port isolation flag (BR_ISOLATED) was added in commit
> 7d850abd5f4e. But switchdev does not offload it currently.
> It should be easy to implement in drivers, just like bridge offload
> but prevent isolated ports to communicate with each other.
> 
> Your thoughts?

If nothing else, do add BR_ISOLATED to BR_PORT_FLAGS_HW_OFFLOAD so that
switchdev drivers which have an offloaded data plane have a chance to
reject this new bridge port flag if they don't support it yet.
