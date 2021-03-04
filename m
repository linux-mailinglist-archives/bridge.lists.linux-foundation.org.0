Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9373432DA5D
	for <lists.bridge@lfdr.de>; Thu,  4 Mar 2021 20:27:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E477684380;
	Thu,  4 Mar 2021 19:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vE8wTKAMcY3S; Thu,  4 Mar 2021 19:27:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 975F18430B;
	Thu,  4 Mar 2021 19:27:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63DC3C0012;
	Thu,  4 Mar 2021 19:27:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 54980C0001
 for <bridge@lists.linux-foundation.org>; Thu,  4 Mar 2021 19:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40AFB43286
 for <bridge@lists.linux-foundation.org>; Thu,  4 Mar 2021 19:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSLyZeT83wuV for <bridge@lists.linux-foundation.org>;
 Thu,  4 Mar 2021 19:27:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 849AE43285
 for <bridge@lists.linux-foundation.org>; Thu,  4 Mar 2021 19:27:28 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id q20so19667446pfu.8
 for <bridge@lists.linux-foundation.org>; Thu, 04 Mar 2021 11:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=2xQkEOsdGwG+u+CFWHs2eb6pdZOOXhDpLU358vUysAY=;
 b=cibd0BXvekrWeRL7XEmAJ2rp5GBMqsbXiuGfvojavs69YFWqTvYXWd6u4gsSsBQn0X
 hshjVGPwA/pd89Xpu8MosA9FqOqedFuJfzebUhtk6AdRpb1MmYFhdkFKAGBPFEneF0Cn
 gIG/5TkBIFmY82N0IfSxsv9syOxK4cgMyouhTSPg/9/uT+4qMySSVLJjnM+g2eNHb2Ny
 2mwUEvM3UU8xZd2HQHUMAygwAozClXLzrpmFMAQMk3fJiWAY2qC492MxukbaS7bj2EMk
 yvdjvcJDyNdNZFFka/XGVaOrgzkn0mLSLtleXQv7e60+TR+Z2fxpuvOuBxys26AoGYm8
 K+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=2xQkEOsdGwG+u+CFWHs2eb6pdZOOXhDpLU358vUysAY=;
 b=GpoIFGA47p7I4OFKuLFH8aA/ayAmTESkusFikvorknq6VFUDNv5FfqyZwY4jAbSUbY
 cBycNjgdWcwd3enn9+kRMGUEIWuiQA1eLXp/TsF6LzfsVL91g4OrV5kN+YpymIFHiBHb
 0l8SIfgS5CVX4REZ5dfyE9E0QGtEISZkLIQMfvG0y/KqWRvC7lVRmsQ3qrYuTAhiD62H
 RvuJHGjIJndA524gX28Mk4GIsMWwpjT/bLnQ7QCBonT9P8izIokhbNQel/1X+Ljk0ATj
 B9r/B+GbRi758Cnj8f3BU33AQQTl0yF0qr0ADVyceIf8DMynZ2G0Y8wmqbNTkGTOEeqk
 SbQg==
X-Gm-Message-State: AOAM532hF90StlJzfCO174e8xZR6iRpK4eYlCB7DLQMXq9Ag9q43AmWJ
 lgbmFpgAbvGjWod8lh4f7RFOIw81ogioqQ==
X-Google-Smtp-Source: ABdhPJyMTzFNz5SqWebXQnpNR1W+OjS/3GuwgF49leYIwFDLReBtY+Sz76ywmtfuLjehwUDaNXTm3A==
X-Received: by 2002:a63:d118:: with SMTP id k24mr4539897pgg.420.1614879290507; 
 Thu, 04 Mar 2021 09:34:50 -0800 (PST)
Received: from hermes.local (76-14-218-44.or.wavecable.com. [76.14.218.44])
 by smtp.gmail.com with ESMTPSA id g6sm48971pfi.15.2021.03.04.09.34.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Mar 2021 09:34:50 -0800 (PST)
Date: Thu, 4 Mar 2021 09:34:46 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210304093446.356ba862@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org
Subject: [Bridge] Minor update to bridge-utils
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

Small changes to bridge-utils to address some minor issues.

1. The default branch is main not master

2. Fixed some compiler warnings because Gcc 10 and Clang now
   do checks for string overflow.

3. Made a backup repository mirror at github.

4. Fixed version string printed

This is not a required update, none of these are important
or critical to users.

Do not intend to do any new features or serious fixes to
bridge-utils; all users should convert to iproute2/bridge command.
