Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC5467B8E6
	for <lists.bridge@lfdr.de>; Wed, 25 Jan 2023 18:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B424415B9;
	Wed, 25 Jan 2023 17:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B424415B9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=protonmail3 header.b=GzJWXVTv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwdX-VlXxhfH; Wed, 25 Jan 2023 17:59:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1A810415BA;
	Wed, 25 Jan 2023 17:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A810415BA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1746C0077;
	Wed, 25 Jan 2023 17:59:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D35B5C002D
 for <bridge@lists.linux-foundation.org>; Wed, 25 Jan 2023 17:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7CB661179
 for <bridge@lists.linux-foundation.org>; Wed, 25 Jan 2023 17:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7CB661179
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com
 header.a=rsa-sha256 header.s=protonmail3 header.b=GzJWXVTv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXepONnUdFsL for <bridge@lists.linux-foundation.org>;
 Wed, 25 Jan 2023 17:59:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF95560DA0
Received: from mail-4324.protonmail.ch (mail-4324.protonmail.ch [185.70.43.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF95560DA0
 for <bridge@lists.linux-foundation.org>; Wed, 25 Jan 2023 17:59:02 +0000 (UTC)
Date: Wed, 25 Jan 2023 17:58:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1674669540; x=1674928740;
 bh=TZDZSw1lqaA6jzVudj4TVSY9S4Pl4MRpr6LbLyFgMu8=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=GzJWXVTvWhRX4GwKkSctOfbgpJZKHUwsUnq6FnyrBDKgYrOEkwFoTQOG7uxkOiTml
 Ix+aIZd7ckTNufbvxgVbQgBFLsQ0mHAKekhqA3lx+SBCR7fBOtC/nzoDsoWfdL81pB
 1x4l5txfI4Bol4/Ijd60HSD8NPPMuxxhFRxoeojJ2G4sgw8c5nh9Qv4rjVD2c1u0DY
 92VOpa32QM8TByBmpBmZ48O/q+FctymHwWjr4FCmqhaPS8zkHFCgLj0C/aR3HBOlu+
 v7QXQQRduEByS7eiReMGbPkZx4qGqU7Bf1Z2BcArqJIMyFzoFfrn7q6siIwDIxk8cW
 nFtMSsWBjUjsw==
To: "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>
Message-ID: <QN_UgY3rBNWFL2DBKZbkL7M7cmBq9mW5TmbuPxERfKBw5TsF_2fMsywMm3GZyRW5t7vdj2qLwJVtMozgj_dLJSLxuvSnQ28tmsX8iEKwQJU=@protonmail.com>
Feedback-ID: 33196921:user:proton
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="b1_4l0xoylVaQYBIL8mpBzpd80Hrpkjw5P2yCLEDX0Vwog"
Subject: [Bridge] Packet loss when ~400 virtual machine connected to a bridge
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
From: Ali Shirvani via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ali Shirvani <alishirv@protonmail.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This is a multi-part message in MIME format.

--b1_4l0xoylVaQYBIL8mpBzpd80Hrpkjw5P2yCLEDX0Vwog
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsCgpXZSBoYXZlIGEgcGh5c2ljYWwgc2VydmVyIHRoYXQgaG9zdHMgYWJv
dXQgNDAwIHZpcnR1YWwgbWFjaGluZXMuIEVhY2ggdmlydHVhbCBtYWNoaW5lIGhhcyBhIFRBUCBk
ZXZpY2UgY29ubmVjdGVkIHRvIGEgTGludXggYnJpZGdlLiBXZSB0cmllZCB0byB1c2UgTGludXgt
S1ZNIHN1Z2dlc3Rpb25zIGZvciBRRU1VIG5ldHdvcmtpbmcgYWNjb3JkaW5nIHRvIHRoaXMgbGlu
ayBodHRwczovL3d3dy5saW51eC1rdm0ub3JnL3BhZ2UvMTBHX05JQ19wZXJmb3JtYW5jZTpfVkZJ
T192c192aXJ0aW8KClVuZm9ydHVuYXRlbHksIHdlIGhhdmUgYSBwYWNrZXQgbG9zcyB3aGVuIHBp
bmdpbmcgdmlydHVhbCBtYWNoaW5lcycgSVAgYWRkcmVzc2VzLiBQaW5pbmcgdGhlIHBoeXNpY2Fs
IHNlcnZlciBpcyBvaywgYW5kIHRoZXJlIGlzIG5vIHBhY2tldCBsb3NzLiBXb3VsZCB5b3UgcGxl
YXNlIGd1aWRlIG1lIG9uIGhvdyBJIHNob3VsZCBmaW5kIHRoZSByb290IGNhdXNlIG9mIHRoZSBw
YWNrZXQgbG9zcz8gQWxzbywgaXQgd291bGQgYmUgZ3JlYXQgaWYgeW91IHNoYXJlIHlvdXIgZXhw
ZXJpZW5jZSBvZiBjb25uZWN0aW5nIH40MDAgVk1zIHRvIGEgTGludXggYnJpZGdlIGFuZCBpZiBp
dCByZXF1aXJlcyBhbnkgdHVuaW5nIGZvciBoYW5kbGluZyB0aGlzIG51bWJlciBvZiBWTXMuCgpC
ZXN0IHJlZ2FyZHMsCgpTZW50IHdpdGggW1Byb3RvbiBNYWlsXShodHRwczovL3Byb3Rvbi5tZS8p
IHNlY3VyZSBlbWFpbC4=

--b1_4l0xoylVaQYBIL8mpBzpd80Hrpkjw5P2yCLEDX0Vwog
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7Ij48L2Rpdj48
cCBzdHlsZT0iY29sb3I6cmdiKDE0LCAxNiwgMjYpO2JhY2tncm91bmQ6dHJhbnNwYXJlbnQ7bWFy
Z2luLXRvcDowcHQ7bWFyZ2luLWJvdHRvbTowcHQiPjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kOnRy
YW5zcGFyZW50IiBkYXRhLXByZXNlcnZlci1zcGFjZXM9InRydWUiPkhlbGxvIGV2ZXJ5b25lLDwv
c3Bhbj48L3A+PHAgc3R5bGU9ImNvbG9yOnJnYigxNCwgMTYsIDI2KTtiYWNrZ3JvdW5kOnRyYW5z
cGFyZW50O21hcmdpbi10b3A6MHB0O21hcmdpbi1ib3R0b206MHB0Ij48c3BhbiBzdHlsZT0iYmFj
a2dyb3VuZDp0cmFuc3BhcmVudCIgZGF0YS1wcmVzZXJ2ZXItc3BhY2VzPSJ0cnVlIj5XZSBoYXZl
IGEgcGh5c2ljYWwgc2VydmVyIHRoYXQgaG9zdHMgYWJvdXQgNDAwIHZpcnR1YWwgbWFjaGluZXMu
IEVhY2ggdmlydHVhbCBtYWNoaW5lIGhhcyBhIFRBUCBkZXZpY2UgY29ubmVjdGVkIHRvIGEgTGlu
dXggYnJpZGdlLiBXZSB0cmllZCB0byB1c2UgTGludXgtS1ZNIHN1Z2dlc3Rpb25zIGZvciBRRU1V
IG5ldHdvcmtpbmcgYWNjb3JkaW5nIHRvIHRoaXMgbGluayZuYnNwOzwvc3Bhbj48YSBzdHlsZT0i
Y29sb3I6IzRhNmVlMDtiYWNrZ3JvdW5kOnRyYW5zcGFyZW50IiB0YXJnZXQ9Il9ibGFuayIgaHJl
Zj0iaHR0cHM6Ly93d3cubGludXgta3ZtLm9yZy9wYWdlLzEwR19OSUNfcGVyZm9ybWFuY2U6X1ZG
SU9fdnNfdmlydGlvIj48c3BhbiBzdHlsZT0iYmFja2dyb3VuZDp0cmFuc3BhcmVudCIgZGF0YS1w
cmVzZXJ2ZXItc3BhY2VzPSJ0cnVlIj5odHRwczovL3d3dy5saW51eC1rdm0ub3JnL3BhZ2UvMTBH
X05JQ19wZXJmb3JtYW5jZTpfVkZJT192c192aXJ0aW88L3NwYW4+PC9hPjwvcD48cCBzdHlsZT0i
Y29sb3I6cmdiKDE0LCAxNiwgMjYpO2JhY2tncm91bmQ6dHJhbnNwYXJlbnQ7bWFyZ2luLXRvcDow
cHQ7bWFyZ2luLWJvdHRvbTowcHQiPjxicj48L3A+PHAgc3R5bGU9ImNvbG9yOnJnYigxNCwgMTYs
IDI2KTtiYWNrZ3JvdW5kOnRyYW5zcGFyZW50O21hcmdpbi10b3A6MHB0O21hcmdpbi1ib3R0b206
MHB0Ij48c3BhbiBzdHlsZT0iYmFja2dyb3VuZDp0cmFuc3BhcmVudCIgZGF0YS1wcmVzZXJ2ZXIt
c3BhY2VzPSJ0cnVlIj5VbmZvcnR1bmF0ZWx5LCB3ZSBoYXZlIGEgcGFja2V0IGxvc3Mgd2hlbiBw
aW5naW5nIHZpcnR1YWwgbWFjaGluZXMnIElQIGFkZHJlc3Nlcy4gUGluaW5nIHRoZSBwaHlzaWNh
bCBzZXJ2ZXIgaXMgb2ssIGFuZCB0aGVyZSBpcyBubyBwYWNrZXQgbG9zcy4gV291bGQgeW91IHBs
ZWFzZSBndWlkZSBtZSBvbiBob3cgSSBzaG91bGQgZmluZCB0aGUgcm9vdCBjYXVzZSBvZiB0aGUg
cGFja2V0IGxvc3M/IEFsc28sIGl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSBzaGFyZSB5b3VyIGV4
cGVyaWVuY2Ugb2YgY29ubmVjdGluZyB+NDAwIFZNcyB0byBhIExpbnV4IGJyaWRnZSBhbmQgaWYg
aXQgcmVxdWlyZXMgYW55IHR1bmluZyBmb3IgaGFuZGxpbmcgdGhpcyBudW1iZXIgb2YgVk1zLjwv
c3Bhbj48L3A+PHAgc3R5bGU9ImNvbG9yOnJnYigxNCwgMTYsIDI2KTtiYWNrZ3JvdW5kOnRyYW5z
cGFyZW50O21hcmdpbi10b3A6MHB0O21hcmdpbi1ib3R0b206MHB0Ij48YnI+PC9wPjxwIHN0eWxl
PSJjb2xvcjpyZ2IoMTQsIDE2LCAyNik7YmFja2dyb3VuZDp0cmFuc3BhcmVudDttYXJnaW4tdG9w
OjBwdDttYXJnaW4tYm90dG9tOjBwdCI+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQ6dHJhbnNwYXJl
bnQiIGRhdGEtcHJlc2VydmVyLXNwYWNlcz0idHJ1ZSI+QmVzdCByZWdhcmRzLDwvc3Bhbj48L3A+
PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7Ij48YnI+PC9k
aXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7Ij48YnI+
PC9kaXY+DQo8ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jayIgc3R5bGU9ImZv
bnQtZmFtaWx5OiBBcmlhbDsgZm9udC1zaXplOiAxNHB4OyI+DQogICAgPGRpdiBjbGFzcz0icHJv
dG9ubWFpbF9zaWduYXR1cmVfYmxvY2stdXNlciBwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1l
bXB0eSI+DQogICAgICAgIA0KICAgICAgICAgICAgPC9kaXY+DQogICAgDQogICAgICAgICAgICA8
ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1wcm90b24iPg0KICAgICAgICBT
ZW50IHdpdGggPGEgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHBzOi8vcHJvdG9uLm1lLyIgcmVs
PSJub29wZW5lciBub3JlZmVycmVyIj5Qcm90b24gTWFpbDwvYT4gc2VjdXJlIGVtYWlsLg0KICAg
IDwvZGl2Pg0KPC9kaXY+DQo=


--b1_4l0xoylVaQYBIL8mpBzpd80Hrpkjw5P2yCLEDX0Vwog--

